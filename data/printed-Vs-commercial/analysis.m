clear

load 20uL-printed-pipette.csv
load 50uL-printed-pipette.csv
load 200uL-printed-pipette.csv
load commercial-pipette.csv

mean20 = mean(mean(X20uL_printed_pipette,1),2);
mean50 = mean(mean(X50uL_printed_pipette,1),2);
mean200 = mean(mean(X200uL_printed_pipette,1),2);

std20 = std(mean(X20uL_printed_pipette,1));
std50 = std(mean(X50uL_printed_pipette,1));
std200 = std(mean(X200uL_printed_pipette,1));

commercial_mean_20=mean(commercial_pipette(:,3));
commercial_mean_50=mean(commercial_pipette(:,2));
commercial_mean_200=mean(commercial_pipette(:,1));

commercial_std_20=std(commercial_pipette(:,3));
commercial_std_50=std(commercial_pipette(:,2));
commercial_std_200=std(commercial_pipette(:,1));

means = [mean20 mean50 mean200; commercial_mean_20 commercial_mean_50 commercial_mean_200]*1000;

stds = [std20 std50 std200; commercial_std_20 commercial_std_50 commercial_std_200]*1000;

dlmwrite('analyzed_means.csv',means,'precision',4)
dlmwrite('analyzed_stds.csv',stds,'precision',3)

%save -ascii analyzed_means.csv means
%save -ascii analyzed_stds.csv stds

%string_means = mat2str(means,4)
%string_stds = mat2str(stds,3)

%save -ascii string_means.csv string_means
%save -ascii string_means.csv string_means
