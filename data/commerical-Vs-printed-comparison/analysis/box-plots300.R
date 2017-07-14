data_300uL <- read.csv(file='data_300uL.csv', sep=',')
data_300uL = as.data.frame(data_300uL)

library(ggplot2)

require(gridExtra)
plot1 <- ggplot(data_300uL[1,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ 
  labs(x="300 μL")
plot2 <- ggplot(data_300uL[2,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ 
  labs(x="200 μL")
plot3 <- ggplot(data_300uL[3,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+  
  labs(x="50 μL")
plot4 <- ggplot(data_300uL[4,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  labs(x="30 μL") +
  #scale_colour_manual(name="Pipette:", values=c(Commercial="red", Printed="blue", Adjusted="purple"), guide='legend') +
  #guides(colour = guide_legend(override.aes = list(shape=c(22, 22, 21)))) +
  theme(legend.position="none")

grid.arrange(plot1, plot2, plot3, plot4, ncol=4, left = "Volume (μL)", bottom = "Nominal Volume", top="30-300 μL Pipettes")
