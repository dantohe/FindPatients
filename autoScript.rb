def callAll
Mongoid.load!("mongoid.yml", :production)
counter=0
certain=Hash.new
unCertain=Hash.new
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '236973005', "conditions.codes.ICD-9-CM" => 'V27.0', "conditions.codes.ICD-10-CM" => 'Z37.0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '177184002', "procedures.codes.SNOMED-CT" => '177184002', "procedures.codes.CPT" => '59409', "procedures.codes.CPT" => '59409', "procedures.codes.LOINC" => '65853-4')
counter=counter+1 if gotIt.length>1 
certain["0_Hazel_Abbott.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["0_Hazel_Abbott.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '46635009', "conditions.codes.ICD-9-CM" => '250.01', "conditions.codes.ICD-10-CM" => 'E10.9', "conditions.codes.ICD-9-CM" => '250.42', "conditions.codes.ICD-10-CM" => 'E11.21', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '401191002', "procedures.codes.SNOMED-CT" => '134388005', "procedures.codes.SNOMED-CT" => '91161007', "procedures.codes.SNOMED-CT" => '252779009')
counter=counter+1 if gotIt.length>1 
certain["1_Ruth_Baker.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["1_Ruth_Baker.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2054-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '171047005', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "conditions.codes.SNOMED-CT" => '15167005', "conditions.codes.ICD-10-CM" => 'F10.10', "conditions.codes.ICD-9-CM" => '305.00', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '225337009', "procedures.codes.SNOMED-CT" => '105355005', "procedures.codes.CPT" => '99408', "procedures.codes.HCPCS" => 'H0001', "procedures.codes.LOINC" => '44249-1', "medications.codes.RxNorm" => '1000097')
counter=counter+1 if gotIt.length>1 
certain["2_Darryl_Barnes.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["2_Darryl_Barnes.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "conditions.codes.SNOMED-CT" => '111880001', "conditions.codes.ICD-9-CM" => '042', "conditions.codes.ICD-10-CM" => 'B20', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["3_Ana_Barton.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["3_Ana_Barton.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '237240001', "conditions.codes.ICD-10-CM" => 'O00.1', "conditions.codes.ICD-10-CM" => 'O09.619', "conditions.codes.ICD-9-CM" => 'V22.0', "conditions.codes.SNOMED-CT" => '426656000', "conditions.codes.SNOMED-CT" => '426979002', "conditions.codes.ICD-10-CM" => 'J45.30', "conditions.codes.SNOMED-CT" => '190905008', "conditions.codes.ICD-9-CM" => '277.00', "conditions.codes.ICD-10-CM" => 'E84.0', "conditions.codes.SNOMED-CT" => '1532007', "conditions.codes.ICD-9-CM" => '034.0', "conditions.codes.ICD-10-CM" => 'J02.0', "conditions.codes.SNOMED-CT" => '195708003', "conditions.codes.ICD-9-CM" => '460', "conditions.codes.ICD-10-CM" => 'J00', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '1006608', "medications.codes.RxNorm" => '1013662', "medications.codes.RxNorm" => '197454', "medications.codes.RxNorm" => '1006608')
counter=counter+1 if gotIt.length>1 
certain["4_Julie_Boone.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["4_Julie_Boone.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "conditions.codes.SNOMED-CT" => '193349004', "conditions.codes.ICD-9-CM" => '362.01', "conditions.codes.ICD-10-CM" => 'E08.311', "conditions.codes.ICD-9-CM" => '365.10', "conditions.codes.ICD-10-CM" => 'H40.10X0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '10178000', "procedures.codes.CPT" => '66840', "procedures.codes.LOINC" => '32451-7')
counter=counter+1 if gotIt.length>1 
certain["5_Ross_Brock.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["5_Ross_Brock.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2076-8',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "insurance_providers.codes.SOP" => '349', "procedures.codes.LOINC" => '44249-1', "medications.codes.RxNorm" => '1000097')
counter=counter+1 if gotIt.length>1 
certain["6_Philip_Casey.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["6_Philip_Casey.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "conditions.codes.SNOMED-CT" => '193349004', "conditions.codes.ICD-9-CM" => '362.01', "conditions.codes.ICD-10-CM" => 'E08.311', "conditions.codes.ICD-9-CM" => '365.10', "conditions.codes.ICD-10-CM" => 'H40.10X0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '312903003', "procedures.codes.SNOMED-CT" => '428341000124108', "procedures.codes.SNOMED-CT" => '10178000', "procedures.codes.CPT" => '66840', "procedures.codes.SNOMED-CT" => '13767004', "procedures.codes.CPT" => '65235', "procedures.codes.LOINC" => '32451-7', "procedures.codes.LOINC" => '32451-7', "procedures.codes.LOINC" => '71484-0', "procedures.codes.LOINC" => '71486-5')
counter=counter+1 if gotIt.length>1 
certain["7_Leroy_Cohen.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["7_Leroy_Cohen.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '46635009', "conditions.codes.ICD-9-CM" => '250.01', "conditions.codes.ICD-10-CM" => 'E10.9', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["8_Evelyn_Conner.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["8_Evelyn_Conner.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '6475002', "conditions.codes.ICD-9-CM" => '331.0', "conditions.codes.ICD-10-CM" => 'G30.9', "conditions.codes.SNOMED-CT" => '10091002', "conditions.codes.ICD-9-CM" => '428.0', "conditions.codes.ICD-10-CM" => 'I50.1', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '15163009', "procedures.codes.CPT" => '27130', "procedures.codes.HCPCS" => 'S2118', "procedures.codes.SNOMED-CT" => '179344006', "procedures.codes.CPT" => '27447')
counter=counter+1 if gotIt.length>1 
certain["9_Nathan_Cross.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["9_Nathan_Cross.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2106-3',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '426979002', "conditions.codes.ICD-10-CM" => 'J45.30', "conditions.codes.SNOMED-CT" => '1532007', "conditions.codes.ICD-9-CM" => '034.0', "conditions.codes.ICD-10-CM" => 'J02.0', "conditions.codes.SNOMED-CT" => '195708003', "conditions.codes.ICD-9-CM" => '460', "conditions.codes.ICD-10-CM" => 'J00', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '197454', "medications.codes.RxNorm" => '197454', "medications.codes.RxNorm" => '197454')
counter=counter+1 if gotIt.length>1 
certain["10_Josephine_Dean.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["10_Josephine_Dean.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "conditions.codes.SNOMED-CT" => '46635009', "conditions.codes.ICD-9-CM" => '250.01', "conditions.codes.ICD-10-CM" => 'E10.9', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["11_Sonia_Ellis.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["11_Sonia_Ellis.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "conditions.codes.SNOMED-CT" => '111880001', "conditions.codes.ICD-9-CM" => '042', "conditions.codes.ICD-10-CM" => 'B20', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '313134')
counter=counter+1 if gotIt.length>1 
certain["12_Delores_Fletcher.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["12_Delores_Fletcher.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '428231000124106')
counter=counter+1 if gotIt.length>1 
certain["13_Lydia_Ford.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["13_Lydia_Ford.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '10091002', "conditions.codes.ICD-9-CM" => '428.0', "conditions.codes.ICD-10-CM" => 'I50.1', "conditions.codes.SNOMED-CT" => '10725009', "conditions.codes.ICD-9-CM" => '401.1', "conditions.codes.SNOMED-CT" => '109267002', "conditions.codes.ICD-9-CM" => '172.4', "conditions.codes.ICD-10-CM" => 'D03.4', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '108241001', "procedures.codes.HCPCS" => 'G0257', "procedures.codes.CPT" => '90937')
counter=counter+1 if gotIt.length>1 
certain["14_Jeanette_Fowler.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["14_Jeanette_Fowler.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '109838007', "conditions.codes.ICD-9-CM" => '153.0', "conditions.codes.ICD-10-CM" => 'C18.0', "conditions.codes.SNOMED-CT" => '254900004', "conditions.codes.ICD-9-CM" => '185', "conditions.codes.ICD-10-CM" => 'C61', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.CPT" => '77427', "procedures.codes.CPT" => '77427', "procedures.codes.CPT" => '77427', "procedures.codes.SNOMED-CT" => '10492003', "procedures.codes.CPT" => '55810', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.LOINC" => '25031-6')
counter=counter+1 if gotIt.length>1 
certain["15_Gary_Fox.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["15_Gary_Fox.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2028-9',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '237244005', "conditions.codes.ICD-9-CM" => 'V22.0', "conditions.codes.ICD-10-CM" => 'Z34.00', "conditions.codes.SNOMED-CT" => '236973005', "conditions.codes.ICD-9-CM" => 'V27.0', "conditions.codes.ICD-10-CM" => 'Z37.0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '236973005', "procedures.codes.SNOMED-CT" => '236973005', "procedures.codes.CPT" => '59409', "procedures.codes.CPT" => '59409', "procedures.codes.LOINC" => '24533-2')
counter=counter+1 if gotIt.length>1 
certain["16_Sara_Garner.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["16_Sara_Garner.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '188147009', "conditions.codes.ICD-9-CM" => '174.0', "conditions.codes.ICD-10-CM" => 'C50.011', "conditions.codes.SNOMED-CT" => '416053008', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008')
counter=counter+1 if gotIt.length>1 
certain["17_Jeanette_Greer.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["17_Jeanette_Greer.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2054-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.ICD-10-CM" => 'M43.27', "conditions.codes.ICD-9-CM" => '093.0', "conditions.codes.ICD-10-CM" => 'A52.01', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '103697008', "procedures.codes.SNOMED-CT" => '371530004', "procedures.codes.SNOMED-CT" => '428191000124101', "procedures.codes.LOINC" => '11366-2', "procedures.codes.LOINC" => '24665-2', "procedures.codes.LOINC" => '24604-1', "procedures.codes.HCPCS" => 'G0202', "medications.codes.RxNorm" => '311975')
counter=counter+1 if gotIt.length>1 
certain["18_Susan_Hanson.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["18_Susan_Hanson.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "encounters.codes.SNOMED-CT" => '185349003', "conditions.codes.SNOMED-CT" => '46635009', "conditions.codes.ICD-9-CM" => '250.01', "conditions.codes.ICD-10-CM" => 'E10.9', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["19_Lucy_Harmon.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["19_Lucy_Harmon.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2054-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["20_Seth_Harper.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["20_Seth_Harper.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2054-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '188147009', "conditions.codes.ICD-9-CM" => '174.0', "conditions.codes.ICD-10-CM" => 'C50.011', "conditions.codes.SNOMED-CT" => '416053008', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "medications.codes.RxNorm" => '1098617')
counter=counter+1 if gotIt.length>1 
certain["21_Tara_Joseph.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["21_Tara_Joseph.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2054-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '171047005', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "conditions.codes.SNOMED-CT" => '15167005', "conditions.codes.ICD-10-CM" => 'F10.10', "conditions.codes.ICD-9-CM" => '305.00', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '225337009', "procedures.codes.SNOMED-CT" => '105355005', "procedures.codes.CPT" => '99408', "procedures.codes.HCPCS" => 'H0001', "procedures.codes.LOINC" => '44249-1', "medications.codes.RxNorm" => '1000097')
counter=counter+1 if gotIt.length>1 
certain["22_Marc_Lawson.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["22_Marc_Lawson.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '233970002', "conditions.codes.ICD-9-CM" => '411.0', "conditions.codes.ICD-10-CM" => 'I20.0', "conditions.codes.SNOMED-CT" => '371804009', "conditions.codes.ICD-9-CM" => '414.01', "conditions.codes.ICD-10-CM" => 'I25.10', "conditions.codes.SNOMED-CT" => '10091002', "conditions.codes.ICD-9-CM" => '428.0', "conditions.codes.ICD-10-CM" => 'I50.1', "conditions.codes.SNOMED-CT" => '981000124106', "conditions.codes.SNOMED-CT" => '10725009', "conditions.codes.ICD-9-CM" => '401.1', "conditions.codes.ICD-10-CM" => 'I10', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '198467', "medications.codes.RxNorm" => '311354', "medications.codes.RxNorm" => '200031')
counter=counter+1 if gotIt.length>1 
certain["23_Keith_Logan.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["23_Keith_Logan.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '109838007', "conditions.codes.ICD-9-CM" => '153.0', "conditions.codes.ICD-10-CM" => 'C18.0', "conditions.codes.SNOMED-CT" => '254900004', "conditions.codes.ICD-9-CM" => '185', "conditions.codes.ICD-10-CM" => 'C61', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.SNOMED-CT" => '84755001', "procedures.codes.CPT" => '77427', "procedures.codes.CPT" => '77427', "procedures.codes.CPT" => '77427', "procedures.codes.SNOMED-CT" => '10492003', "procedures.codes.CPT" => '55810', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.SNOMED-CT" => '116783008', "procedures.codes.LOINC" => '38208-5', "medications.codes.RxNorm" => '200327')
counter=counter+1 if gotIt.length>1 
certain["24_Sergio_Lucas.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["24_Sergio_Lucas.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '225337009', "medications.codes.RxNorm" => '899511')
counter=counter+1 if gotIt.length>1 
certain["25_Joshua_Massey.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["25_Joshua_Massey.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "encounters.codes.CPT" => '92002', "conditions.codes.SNOMED-CT" => '193349004', "conditions.codes.ICD-9-CM" => '362.01', "conditions.codes.ICD-10-CM" => 'E08.311', "conditions.codes.ICD-9-CM" => '365.10', "conditions.codes.ICD-10-CM" => 'H40.10X0', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '10178000', "procedures.codes.CPT" => '66840', "procedures.codes.LOINC" => '32451-7')
counter=counter+1 if gotIt.length>1 
certain["26_Shawn_Maxwell.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["26_Shawn_Maxwell.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '96150', "encounters.codes.CPT" => '96150', "encounters.codes.CPT" => '96150', "encounters.codes.CPT" => '96150', "encounters.codes.CPT" => '96150', "encounters.codes.SNOMED-CT" => '10197000', "encounters.codes.SNOMED-CT" => '10197000', "encounters.codes.SNOMED-CT" => '10197000', "encounters.codes.HCPCS" => 'G0444', "conditions.codes.SNOMED-CT" => '15639000', "conditions.codes.ICD-9-CM" => '296.22', "conditions.codes.ICD-10-CM" => 'F32.1', "conditions.codes.SNOMED-CT" => '426979002', "conditions.codes.ICD-10-CM" => 'J45.30', "conditions.codes.SNOMED-CT" => '1532007', "conditions.codes.ICD-9-CM" => '034.0', "conditions.codes.ICD-10-CM" => 'J02.0', "conditions.codes.SNOMED-CT" => '195708003', "conditions.codes.ICD-9-CM" => '460', "conditions.codes.ICD-10-CM" => 'J00', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '11816003', "procedures.codes.CPT" => '97802', "procedures.codes.SNOMED-CT" => '442333005', "procedures.codes.CPT" => '90653', "procedures.codes.LOINC" => '73831-0', "medications.codes.RxNorm" => '197454', "medications.codes.RxNorm" => '1085795')
counter=counter+1 if gotIt.length>1 
certain["27_April_Mccormick.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["27_April_Mccormick.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '233970002', "conditions.codes.ICD-9-CM" => '411.0', "conditions.codes.ICD-10-CM" => 'I20.0', "conditions.codes.SNOMED-CT" => '371804009', "conditions.codes.ICD-9-CM" => '414.01', "conditions.codes.ICD-10-CM" => 'I25.10', "conditions.codes.SNOMED-CT" => '10091002', "conditions.codes.ICD-9-CM" => '428.0', "conditions.codes.ICD-10-CM" => 'I50.1', "conditions.codes.SNOMED-CT" => '981000124106', "conditions.codes.SNOMED-CT" => '10725009', "conditions.codes.ICD-9-CM" => '401.1', "conditions.codes.ICD-10-CM" => 'I10', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["28_Wayne_Morris.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["28_Wayne_Morris.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '899511')
counter=counter+1 if gotIt.length>1 
certain["29_Jay_Reese.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["29_Jay_Reese.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2028-9',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "insurance_providers.codes.SOP" => '2', "medications.codes.CVX" => '120', "medications.codes.CVX" => '106', "medications.codes.CVX" => '120', "medications.codes.CVX" => '106', "medications.codes.CVX" => '106', "medications.codes.CVX" => '120', "medications.codes.CVX" => '120', "medications.codes.CVX" => '106', "medications.codes.CVX" => '120', "medications.codes.CVX" => '120', "medications.codes.CVX" => '120', "medications.codes.CVX" => '120', "medications.codes.CVX" => '08', "medications.codes.CVX" => '08', "medications.codes.CVX" => '08', "medications.codes.CVX" => '08', "medications.codes.CVX" => '104', "medications.codes.CVX" => '10', "medications.codes.CVX" => '10', "medications.codes.CVX" => '10', "medications.codes.CVX" => '10', "medications.codes.CVX" => '140', "medications.codes.CVX" => '140', "medications.codes.CVX" => '140', "medications.codes.CVX" => '100', "medications.codes.CVX" => '100', "medications.codes.CVX" => '100', "medications.codes.CVX" => '100', "medications.codes.CVX" => '116', "medications.codes.CVX" => '116', "medications.codes.CVX" => '116', "medications.codes.CVX" => '104', "medications.codes.CVX" => '03', "medications.codes.CVX" => '21', "medications.codes.CVX" => '140', "medications.codes.CVX" => '140', "medications.codes.CVX" => '140')
counter=counter+1 if gotIt.length>1 
certain["30_Billy_Roberson.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["30_Billy_Roberson.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.22', "conditions.codes.ICD-10-CM" => 'F32.1', "conditions.codes.ICD-10-CM" => 'M43.27', "conditions.codes.SNOMED-CT" => '109267002', "conditions.codes.ICD-10-CM" => 'D03.4', "conditions.codes.ICD-9-CM" => '172.4', "conditions.codes.SNOMED-CT" => '162607003', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '428191000124101', "procedures.codes.LOINC" => '73832-8')
counter=counter+1 if gotIt.length>1 
certain["31_Matthew_Salazar.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["31_Matthew_Salazar.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '111880001', "conditions.codes.ICD-9-CM" => '042', "conditions.codes.ICD-10-CM" => 'B20', "conditions.codes.SNOMED-CT" => '109564008', "conditions.codes.ICD-9-CM" => '521.00', "conditions.codes.ICD-10-CM" => 'K02.3', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '234723000', "procedures.codes.CDT" => 'D1206')
counter=counter+1 if gotIt.length>1 
certain["32_Corey_Shelton.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["32_Corey_Shelton.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.ICD-10-CM" => 'M43.27', "conditions.codes.ICD-9-CM" => '093.0', "conditions.codes.ICD-10-CM" => 'A52.01', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '103697008')
counter=counter+1 if gotIt.length>1 
certain["33_Georgia_Snyder.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["33_Georgia_Snyder.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "insurance_providers.codes.SOP" => '349')
counter=counter+1 if gotIt.length>1 
certain["34_Marie_Stewart.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["34_Marie_Stewart.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "insurance_providers.codes.SOP" => '349', "procedures.codes.LOINC" => '44249-1', "procedures.codes.LOINC" => '44249-1', "medications.codes.RxNorm" => '313585', "medications.codes.RxNorm" => '313585')
counter=counter+1 if gotIt.length>1 
certain["35_Bruce_Stokes.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["35_Bruce_Stokes.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2028-9',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.SNOMED-CT" => '108313002', "encounters.codes.SNOMED-CT" => '108313002', "encounters.codes.ICD-9-PCS" => '94.31', "encounters.codes.ICD-9-PCS" => '94.31', "encounters.codes.ICD-10-PCS" => 'GZ50ZZZ', "encounters.codes.ICD-10-PCS" => 'GZ50ZZZ', "conditions.codes.SNOMED-CT" => '14183003', "conditions.codes.ICD-9-CM" => '296.20', "conditions.codes.ICD-10-CM" => 'F32.0', "conditions.codes.SNOMED-CT" => '15167005', "conditions.codes.ICD-10-CM" => 'F10.10', "conditions.codes.ICD-9-CM" => '305.00', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '1000097')
counter=counter+1 if gotIt.length>1 
certain["36_Virgil_Sullivan.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["36_Virgil_Sullivan.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'1002-5',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '6475002', "conditions.codes.ICD-10-CM" => 'G30.9', "conditions.codes.ICD-9-CM" => '331.0', "conditions.codes.SNOMED-CT" => '10091002', "conditions.codes.ICD-9-CM" => '428.0', "conditions.codes.ICD-10-CM" => 'I50.1', "insurance_providers.codes.SOP" => '349', "procedures.codes.SNOMED-CT" => '444783004', "procedures.codes.HCPCS" => 'G0105', "procedures.codes.CPT" => '45378', "procedures.codes.SNOMED-CT" => '15163009', "procedures.codes.CPT" => '27130', "procedures.codes.HCPCS" => 'S2118', "procedures.codes.SNOMED-CT" => '179344006', "procedures.codes.CPT" => '27447', "procedures.codes.LOINC" => '58151-2', "procedures.codes.LOINC" => '57254-5', "medications.codes.CVX" => '33', "medications.codes.CVX" => '33', "medications.codes.RxNorm" => '1049630')
counter=counter+1 if gotIt.length>1 
certain["37_Eugene_Turner.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["37_Eugene_Turner.xml"]=mrns
end
gotIt =Record.where(:last.in => [ /\b[A-Z]\b/] , "race.code"=>'2131-1',"encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "encounters.codes.CPT" => '99201', "conditions.codes.SNOMED-CT" => '237240001', "conditions.codes.ICD-10-CM" => 'O00.1', "conditions.codes.ICD-10-CM" => 'O09.619', "conditions.codes.ICD-9-CM" => 'V22.0', "conditions.codes.SNOMED-CT" => '426656000', "conditions.codes.SNOMED-CT" => '426979002', "conditions.codes.ICD-10-CM" => 'J45.30', "conditions.codes.SNOMED-CT" => '190905008', "conditions.codes.ICD-9-CM" => '277.00', "conditions.codes.ICD-10-CM" => 'E84.0', "conditions.codes.SNOMED-CT" => '1532007', "conditions.codes.ICD-9-CM" => '034.0', "conditions.codes.ICD-10-CM" => 'J02.0', "conditions.codes.SNOMED-CT" => '195708003', "conditions.codes.ICD-9-CM" => '460', "conditions.codes.ICD-10-CM" => 'J00', "insurance_providers.codes.SOP" => '349', "medications.codes.RxNorm" => '1006608', "medications.codes.RxNorm" => '1013662', "medications.codes.RxNorm" => '197454', "medications.codes.RxNorm" => '1006608')
counter=counter+1 if gotIt.length>1 
certain["38_Julia_Waters.xml"]=gotIt.first.medical_record_number if gotIt.length==1 
if gotIt.length>1
	mrns=Array.new
	for result in gotIt
		if defined? result.medical_record_number
			mrns<<result.medical_record_number
		end
	end
	unCertain["38_Julia_Waters.xml"]=mrns
end
puts "TOTAL PROCESSED ::::: #{certain.length+unCertain.length}"
puts "CERTAIN ::::: #{certain.length}"
puts "UNCERTAIN ::::: #{unCertain.length}"
certain.each_pair do |key, value|
	puts "#{key}"
	puts "#{value}"
end
unCertain.each_pair do |key, value|
	puts "#{key}"
		if((value.length==2) & (value & ["ee85c89f24946e2ddca12c6edc5181dc", "eb6af018e11320f5c163624beb83767d"]).present?)
			puts "! ee85c89f24946e2ddca12c6edc5181dc "
		elsif((value.length==4) & (value & ["7a86cc6d87cb84461ea190e7c706d81b", "1be81ce59da982792026cc82d95bc10e","511b530c8662f8df97eb97b3eefa0618","258ee9087c5a5fe359ceb3aafff0dd76"]).present?)
			puts "! 258ee9087c5a5fe359ceb3aafff0dd76 "
		elsif((value.length==4) & (value & ["0a26a978d07240b0f917e96727db31d8","ee85c89f24946e2ddca12c6edc5181dc","343731b99c6bdb35a1fc31ce9ed6f889","eb6af018e11320f5c163624beb83767d"]).present?)
			puts "! 0a26a978d07240b0f917e96727db31d8 "
		elsif((value.length==2) & (value & ["929dd1f2c4c54c024fd4d18b1307fdb1", "29cecb1da08efd331fce823e12b607d5"]).present?)
			puts "! 929dd1f2c4c54c024fd4d18b1307fdb1 "
		elsif((value.length==2) & (value & ["5f118631f09abdbdeb1962dc28bfeb27", "a6300c43651965991a4308ffaeb5381d"]).present?)
			puts "! 5f118631f09abdbdeb1962dc28bfeb27 "
		elsif((value.length>8) & (value & ["fed089904c10b81c036adddedddebe7b", "846c1c2ba8370c2f5504b315cc4b1d5d", "b5633133e3421216ced2bdef4dbf382d", "0a26a978d07240b0f917e96727db31d8","ee85c89f24946e2ddca12c6edc5181dc","b54a4e3ab37de7e5f8094793afb8a699","2678a4e396aaec03b860d5aeadcad8e6","929dd1f2c4c54c024fd4d18b1307fdb1","fdea0c22270417d9e59f20b07f642679","91bd37f9cebf7b6ef9f72d7fd6148a81","0085074bb549ffefffa6e16ff34df140","343731b99c6bdb35a1fc31ce9ed6f889","eb6af018e11320f5c163624beb83767d","470f57b022eaeffd4d599078e851a56d","0dbaf9336f7aa1590265250a0eebe548","29cecb1da08efd331fce823e12b607d5","d156a6d38e10efc30eda3cace7456537","8130b2ff5774f1593c86eba8dca4c37b","697e147f076648275e518e7b3ff41dcd"]).present?)
			puts "! fed089904c10b81c036adddedddebe7b "
		else
			for v in value
				puts "\t#{v}"
			end 
		end
end
end
