clear

load 20uL-printed-pipette.csv
load 50uL-printed-pipette.csv
load 200uL-printed-pipette.csv
load commercial-pipette.csv

mean20 = mean(mean(X20uL_printed_pipette,1),2)
mean50 = mean(mean(X50uL_printed_pipette,1),2)
mean200 = mean(mean(X200uL_printed_pipette,1),2)

std20 = std(mean(X20uL_printed_pipette,1))
std50 = std(mean(X50uL_printed_pipette,1))
std200 = std(mean(X200uL_printed_pipette,1))

commercial_mean_20=mean(commercial_pipette(:,1))
commercia_mean_l50=mean(commercial_pipette(:,2))
commercial_mean_200=mean(commercial_pipette(:,3))

commercial_std_20=std(commercial_pipette(:,1))
commercia_std_l50=std(commercial_pipette(:,2))
commercial_std_200=std(commercial_pipette(:,3))