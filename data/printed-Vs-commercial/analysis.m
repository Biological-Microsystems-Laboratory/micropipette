clear

load 20uL-printed-pipette.csv
load 50uL-printed-pipette.csv
load 200uL-printed-pipette.csv
load commercial-pipette.csv

mean20 = mean(mean(X20uL_printed_pipette,1),2)
mean50 = mean(mean(X50uL_printed_pipette,1),2)
mean200 = mean(mean(X200uL_printed_pipette,1),2)
