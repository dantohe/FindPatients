# FindPatients
Identifies master patients IDs into a Cypress repository based on a Cypress QRDA1 test collection.

Environment mongo 1: cypress mongoDB connection properties are needed (setted in  mongoid.yml as production).
Environment mongo 2: a mongoDB store for the test records - connection properties are needed (setted in  mongoid.yml as development)

The script takes as argument the zip containing the QRDA1 to process.
