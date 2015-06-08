# FindPatients
Identifies master patients IDs into a Cypress repository based on a Cypress QRDA1 test collection.

It needs 2 mongo settings in mongoid.yml (the 2 can be hosted on the same insatnce of mongo):
1: a cypress mongoDB connection properties are needed (setted in  mongoid.yml as production).
2: a mongoDB store for the test records - connection properties are needed (setted in  mongoid.yml as development)


The script takes as argument the zip containing the QRDA1 to process.
