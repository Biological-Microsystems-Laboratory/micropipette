# read in raw data
commercial_200uL <- read.csv(file='200uL_commercial.csv', sep=',')
commercial_50uL <- read.csv(file='50uL_commercial.csv', sep=',')
commercial_20uL <- read.csv(file='20uL_commercial.csv', sep=',')
commercial_10uL <- read.csv(file='10uL_commercial.csv', sep=',')

# conversion of mass to volume according to temp and air pressure
vol.com.200 = commercial_200uL*1.0038
vol.com.50 = commercial_50uL*1.0038
vol.com.20 = commercial_20uL*1.0038
vol.com.10 = commercial_10uL*1.0038

#take mean of 5 transfers for each tip
m.tips.com.200 = colMeans(vol.com.200)
m.tips.com.50 = colMeans(vol.com.50)
m.tips.com.20 = colMeans(vol.com.20)
m.tips.com.10 = colMeans(vol.com.10)

#200 uL
m.com.200 = mean(m.tips.com.200)
re.vol.com.200 = sd(m.tips.com.200)
re.p.com.200 = 100*(re.vol.com.200/m.com.200)
se.vol.com.200 = mean(m.tips.com.200) - 200
se.p.com.200 = 100*(se.vol.com.200/200)
analyzed.com.200 = c(m.com.200, se.vol.com.200, se.p.com.200, re.vol.com.200, re.p.com.200)

#50 uL
m.com.50 = mean(m.tips.com.50)
re.vol.com.50 = sd(m.tips.com.50)
re.p.com.50 = 100*(re.vol.com.50/m.com.50)
se.vol.com.50 = mean(m.tips.com.50) - 50
se.p.com.50 = 100*(se.vol.com.50/50)
analyzed.com.50 = c(m.com.50, se.vol.com.50, se.p.com.50, re.vol.com.50, re.p.com.50)

#20 uL
m.com.20 = mean(m.tips.com.20)
re.vol.com.20 = sd(m.tips.com.20)
re.p.com.20 = 100*(re.vol.com.20/m.com.20)
se.vol.com.20 = mean(m.tips.com.20) - 20
se.p.com.20 = 100*(se.vol.com.20/20)
analyzed.com.20 = c(m.com.20, se.vol.com.20, se.p.com.20, re.vol.com.20, re.p.com.20)

#10 uL
m.com.10 = mean(m.tips.com.10)
re.vol.com.10 = sd(m.tips.com.10)
re.p.com.10 = 100*(re.vol.com.10/m.com.10)
se.vol.com.10 = mean(m.tips.com.10) - 10
se.p.com.10 = 100*(se.vol.com.10/10)
analyzed.com.10 = c(m.com.10, se.vol.com.10, se.p.com.10, re.vol.com.10, re.p.com.10)

#printed pipette data
printed_200uL <- read.csv(file='200uL_printed.csv', sep=',')
printed_50uL <- read.csv(file='50uL_printed.csv', sep=',')
printed_20uL <- read.csv(file='20uL_printed.csv', sep=',')
printed_10uL <- read.csv(file='10uL_printed.csv', sep=',')

# Conversion to volume from mass
vol.prt.200 = printed_200uL*1.0038
vol.prt.50 = printed_50uL*1.0038
vol.prt.20 = printed_20uL*1.0038
vol.prt.10 = printed_10uL*1.0038

#take mean of 5 transfers for each tip
m.tips.prt.200 = colMeans(vol.prt.200)
m.tips.prt.50 = colMeans(vol.prt.50)
m.tips.prt.20 = colMeans(vol.prt.20)
m.tips.prt.10 = colMeans(vol.prt.10)

#200 uL
m.prt.200 = mean(m.tips.prt.200)
re.vol.prt.200 = sd(m.tips.prt.200)
re.p.prt.200 = 100*(re.vol.prt.200/m.prt.200)
se.vol.prt.200 = mean(m.tips.prt.200) - 200
se.p.prt.200 = 100*(se.vol.prt.200/200)
analyzed.prt.200 = c(m.prt.200, se.vol.prt.200, se.p.prt.200, re.vol.prt.200, re.p.prt.200)

#50 uL
m.prt.50 = mean(m.tips.prt.50)
re.vol.prt.50 = sd(m.tips.prt.50)
re.p.prt.50 = 100*(re.vol.prt.50/m.prt.50)
se.vol.prt.50 = mean(m.tips.prt.50) - 50
se.p.prt.50 = 100*(se.vol.prt.50/50)
analyzed.prt.50 = c(m.prt.50, se.vol.prt.50, se.p.prt.50, re.vol.prt.50, re.p.prt.50)

#20 uL
m.prt.20 = mean(m.tips.prt.20)
re.vol.prt.20 = sd(m.tips.prt.20)
re.p.prt.20 = 100*(re.vol.prt.20/m.prt.20)
se.vol.prt.20 = mean(m.tips.prt.20) - 20
se.p.prt.20 = 100*(se.vol.prt.20/20)
analyzed.prt.20 = c(m.prt.20, se.vol.prt.20, se.p.prt.20, re.vol.prt.20, re.p.prt.20)

#10 uL
m.prt.10 = mean(m.tips.prt.10)
re.vol.prt.10 = sd(m.tips.prt.10)
re.p.prt.10 = 100*(re.vol.prt.10/m.prt.10)
se.vol.prt.10 = mean(m.tips.prt.10) - 10
se.p.prt.10 = 100*(se.vol.prt.10/10)
analyzed.prt.10 = c(m.prt.10, se.vol.prt.10, se.p.prt.10, re.vol.prt.10, re.p.prt.10)

commercial_analyzed = t(matrix(c(analyzed.com.200, analyzed.com.50, analyzed.com.20, analyzed.com.10), nrow=5, ncol=4))
commercial_analyzed = as.data.frame(commercial_analyzed)
colnames(commercial_analyzed) <- c("Mean", "Systematic Error","% Sys. err.","Random Error","% Rand. err.")
rownames(commercial_analyzed) <- c("200 uL", "50 uL","20 uL","10 uL")
write.csv(commercial_analyzed, file='commercial_analyzed.csv')

printed_analyzed = t(matrix(c(analyzed.prt.200, analyzed.prt.50, analyzed.prt.20, analyzed.prt.10), nrow=5, ncol=4))
printed_analyzed = as.data.frame(printed_analyzed)
colnames(printed_analyzed) <- c("Mean", "Systematic Error","% Sys. err.","Random Error","% Rand. err.")
rownames(printed_analyzed) <- c("200 uL", "50 uL","20 uL","10 uL")
write.csv(printed_analyzed, file='printed_analyzed.csv')


