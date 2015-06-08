#!/usr/bin/ruby
require 'rubygems'
require 'nokogiri'
require 'health-data-standards'
require 'zip/zipfilesystem'
require 'fileutils'
require 'health-data-standards'

#a simple patient from QRDA class - consider for 
# TODO either make it reach or remove it
class PatientFromQRDA
	attr_accessor :fileName
	def initialize(fileName)
		@fileName=fileName
	end
end




#this was intended as the main processor 
class CypressPatientFinder
	
	attr_accessor :testQRDAFile, :masterQRDAFile, :file

	#constructor
	def initialize (testQRDAFile,masterQRDAFile, file)
		@testQRDAFile=testQRDAFile
		@masterQRDAFile=masterQRDAFile
		@file=file
	end


	# loads the patients (records) from the archived QRDA file 
	def processPatients
		testPatients=Utils::collectQRDAPatientsFromZip(testQRDAFile)
		puts "Loaded #{testPatients.length} testPatients\n\n"
		iterateThroughRecordsAndWriteQueries( testPatients)
	end


	#goes through each test record/patient and creates a Mongoid query
	# FIXME find the proper way to inject strings into Mongoid queries
	def iterateThroughRecordsAndWriteQueries( testPatients)
		puts "Creating a query for each test patinet - each query will identify mongo records that satisfy the section components criteria
Using
		allergies
		conditions
		encounters
		medications
		procedures
		insurance_providers \n\n"
		for patient in testPatients
			firstName=patient.fileName.split("_")[1]
			lastName=patient.fileName.split("_")[2].split(".")[0]
			createQueryForPatient(firstName,lastName,file, patient.fileName)
		end
	end

		

	#creates query per patient
	def createQueryForPatient(firstName,lastName,file,theFileName)

		#look for this record in mongo using first name and last name 
		patient = Record.where(first:firstName,  last:lastName).first

		finalQuery=Utils::getCodesQueryForPatient(patient)


		# write the freaking script until figuring out Mongoid sh.
		file.write("gotIt =Record.where(#{finalQuery})\n") 
		file.write("counter=counter+1 if gotIt.length>1 \n")
		file.write("certain[\"#{theFileName}\"]=gotIt.first.medical_record_number if gotIt.length==1 \n")
		#retrive the mrns
		file.write("if gotIt.length>1\n")
		file.write("	mrns=Array.new\n")
		file.write("	for result in gotIt\n")
		file.write("		if defined? result.medical_record_number\n")
		file.write("			mrns<<result.medical_record_number\n")
		file.write("		end\n")
		file.write("	end\n")
		file.write("	unCertain[\"#{theFileName}\"]=mrns\n")
		file.write("end\n")

	end	
end


# a collection of utilities grouped together under the same roof
class Utils

	#a utility that loads into mongoDB records from a zip containing QRDA files 
	#it can be added to a utility class
	def self.collectQRDAPatientsFromZip(zipFile)
		puts "Collecting and storing reords from: #{zipFile}"
		patientsFromQRDAs = Array.new
		zipFilex = open(zipFile)
		Zip::ZipFile.open(zipFilex.path) do |zipfile|
			zipfile.entries.each do |entry|
				data =zipfile.read(entry.name)
				patientFromQRDA = PatientFromQRDA.new(entry.name)
				doc = Nokogiri::XML(data)
				doc.root.add_namespace_definition('cda', 'urn:hl7-org:v3')
				doc.root.add_namespace_definition('sdtc', 'urn:hl7-org:sdtc')
				patient_data = HealthDataStandards::Import::Cat1::PatientImporter.instance.parse_cat1(doc)
				patient = Record.update_or_create(patient_data)
				patientsFromQRDAs << patientFromQRDA
			end
		end
		patientsFromQRDAs
	end

	#formulates Mongoid queries using codes from diffrent sections of the patient record
	# FIXME this is a mess - the section codes collection should be using one sinle method - to much code repetion here
	def self.getCodesQueryForPatient(patient)
				# Record::Sections.each do |section|
		# 	puts "section #{section}"
		# 		# puts "#{section["allergies"].codes}"
		# 		# section.each do |entry|
		# 		# 	puts "#{entry}"
		# 		# end
		# end
		# section allergies - done
		# section care_goals -done 
		# section conditions - done 
		# section encounters - done 
		# section immunizations -done
		# section medical_equipment  - done
		# section medications - done
		# section procedures - done 
		# section results - done 
		# section social_history
		# section vital_signs
		# section support
		# section advance_directives
		# section insurance_providers - done 
		# section functional_statuses
		
		# collecting codes part
		resultsQueryString=""
		# patient.results.each do |enct|
		# 	enct.codes.each_pair do |code_set, coded_values|
		# 		coded_values.each do |coded_value|
		# 			resultsQueryString<<"\"vital_signs.codes.#{code_set}\" => '#{coded_value}', "
		# 		end
		# 	end
		# end





		care_goalsQueryString=""
		patient.care_goals.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					care_goalsQueryString<<"\"care_goals.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end

		medical_equipmentsQueryString=""
		patient.medical_equipment.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					medical_equipmentsQueryString<<"\"medical_equipment.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end

		immunizationsQueryString=""
		patient.immunizations.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					immunizationsQueryString<<"\"immunizations.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end
		encountersQueryString=""
		patient.encounters.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					encountersQueryString<<"\"encounters.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end

		conditionsQueryString=""
		patient.conditions.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					conditionsQueryString<<"\"conditions.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end
		# puts "query for conditions: <#{conditionsQueryString}>"

		insurance_providersQueryString=""
		patient.insurance_providers.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					insurance_providersQueryString<<"\"insurance_providers.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end
		# puts "query for insurance_providers: <#{insurance_providersQueryString}>"

		proceduresQueryString=""
		patient.procedures.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					proceduresQueryString<<"\"procedures.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end


		medicationsQueryString=""
		patient.medications.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					medicationsQueryString<<"\"medications.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end
		# puts "query for medications: <#{medicationsQueryString}>"

		allergiesQueryString=""
		patient.allergies.each do |enct|
			enct.codes.each_pair do |code_set, coded_values|
				coded_values.each do |coded_value|
					allergiesQueryString<<"\"allergies.codes.#{code_set}\" => '#{coded_value}', "
				end
			end
		end
		raceQueryString="\"race.code\"=>'#{patient.race["code"]}',"
		seed=":last.in => [ /\\b[A-Z]\\b/] , "
		finalResult=seed+raceQueryString+resultsQueryString+medical_equipmentsQueryString+immunizationsQueryString+care_goalsQueryString+encountersQueryString+conditionsQueryString+insurance_providersQueryString+proceduresQueryString+medicationsQueryString+allergiesQueryString
		finalResult=finalResult.chomp(', ')
		finalResult
	end

	#creates a script to be populated and run at the end 
	def self.initiateTemporaryScript
		file = File.open("autoScript.rb", "w")
		file.write("def callAll\n") 

		file.write("Mongoid.load!(\"mongoid.yml\", :production)\n")
		file.write("counter=0\n")
		file.write("certain=Hash.new\n")
		file.write("unCertain=Hash.new\n")
		file
	end	


	#this is a method that writes to the temporary scrit file
	def self.writeFinalPartOfTheAutoGeneratedScript(file)


		file.write("puts \"TOTAL PROCESSED ::::: \#\{certain.length+unCertain.length\}\"\n")
		file.write("puts \"CERTAIN ::::: \#\{certain.length\}\"\n")
		file.write("puts \"UNCERTAIN ::::: \#\{unCertain.length\}\"\n")



		file.write("certain.each_pair do |key, value|\n")
		file.write("	puts \"\#\{key\}\"\n")
		file.write("	puts \"\#\{value\}\"\n")
		file.write("end\n")


		file.write("unCertain.each_pair do |key, value|\n")
		file.write("	puts \"\#\{key\}\"\n")

		#there are 6 cases with are too ambiguous - human intervention is necessary

		file.write("		if((value.length==2) & (value & [\"ee85c89f24946e2ddca12c6edc5181dc\", \"eb6af018e11320f5c163624beb83767d\"]).present?)\n")
		file.write("			puts \"! ee85c89f24946e2ddca12c6edc5181dc \"\n")

		file.write("		elsif((value.length==4) & (value & [\"7a86cc6d87cb84461ea190e7c706d81b\", \"1be81ce59da982792026cc82d95bc10e\",\"511b530c8662f8df97eb97b3eefa0618\",\"258ee9087c5a5fe359ceb3aafff0dd76\"]).present?)\n")
		file.write("			puts \"! 258ee9087c5a5fe359ceb3aafff0dd76 \"\n")

		file.write("		elsif((value.length==4) & (value & [\"0a26a978d07240b0f917e96727db31d8\",\"ee85c89f24946e2ddca12c6edc5181dc\",\"343731b99c6bdb35a1fc31ce9ed6f889\",\"eb6af018e11320f5c163624beb83767d\"]).present?)\n")
		file.write("			puts \"! 0a26a978d07240b0f917e96727db31d8 \"\n")

		file.write("		elsif((value.length==2) & (value & [\"929dd1f2c4c54c024fd4d18b1307fdb1\", \"29cecb1da08efd331fce823e12b607d5\"]).present?)\n")
		file.write("			puts \"! 929dd1f2c4c54c024fd4d18b1307fdb1 \"\n")

		file.write("		elsif((value.length==2) & (value & [\"5f118631f09abdbdeb1962dc28bfeb27\", \"a6300c43651965991a4308ffaeb5381d\"]).present?)\n")
		file.write("			puts \"! 5f118631f09abdbdeb1962dc28bfeb27 \"\n")

		file.write("		elsif((value.length>8) & (value & [\"fed089904c10b81c036adddedddebe7b\", \"846c1c2ba8370c2f5504b315cc4b1d5d\", \"b5633133e3421216ced2bdef4dbf382d\", \"0a26a978d07240b0f917e96727db31d8\",\"ee85c89f24946e2ddca12c6edc5181dc\",\"b54a4e3ab37de7e5f8094793afb8a699\",\"2678a4e396aaec03b860d5aeadcad8e6\",\"929dd1f2c4c54c024fd4d18b1307fdb1\",\"fdea0c22270417d9e59f20b07f642679\",\"91bd37f9cebf7b6ef9f72d7fd6148a81\",\"0085074bb549ffefffa6e16ff34df140\",\"343731b99c6bdb35a1fc31ce9ed6f889\",\"eb6af018e11320f5c163624beb83767d\",\"470f57b022eaeffd4d599078e851a56d\",\"0dbaf9336f7aa1590265250a0eebe548\",\"29cecb1da08efd331fce823e12b607d5\",\"d156a6d38e10efc30eda3cace7456537\",\"8130b2ff5774f1593c86eba8dca4c37b\",\"697e147f076648275e518e7b3ff41dcd\"]).present?)\n")
		file.write("			puts \"! fed089904c10b81c036adddedddebe7b \"\n")


		file.write("		else\n")

		file.write("			for v in value\n")
		file.write("				puts \"\\t\#\{v\}\"\n")
		file.write("			end \n")
		file.write("		end\n")
		file.write("end\n")


		file.write("end\n") 
		file.close unless file.nil?
	end
end


# look here into the options to add optparse
# if(ARGV.length<2)
# 	puts "Two arguments are needed: \n\t1. path to the zip containing the QRDA1 test files 
# 	2. path to the zip containing the master QRDA1 files."
# 	abort
# end
if(ARGV.length<1)
	puts "One argument are needed: \n\t1. path to the zip containing the QRDA1 test files"
	abort
end



Mongoid.load!("mongoid.yml", :development)

#due to a mongoid issues (cannot make it call a query build out of a string) - so I create a temporary script that I call after 
scriptFile=Utils::initiateTemporaryScript

#create a patient finder 
patientFinder = CypressPatientFinder.new(ARGV[0], ARGV[1],scriptFile)
patientFinder.processPatients


#writes the final part that creates the output
Utils::writeFinalPartOfTheAutoGeneratedScript(scriptFile)
require_relative 'autoScript'

puts "PRINTING RESULTS"

#call the auto generated script
callAll

