data_1000uL <- read.csv(file='data_1000uL.csv', sep=',')
data_1000uL = as.data.frame(data_1000uL)

library(ggplot2)

require(gridExtra)
plot1 <- ggplot(data_1000uL[1,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ 
  labs(x="1000 μL")
plot2 <- ggplot(data_1000uL[2,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ 
  labs(x="500 μL")
plot3 <- ggplot(data_1000uL[3,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+  
  labs(x="200 μL")
plot4 <- ggplot(data_1000uL[4,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
  geom_boxplot(stat = 'identity') +
  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  labs(x="100 μL") +
  #scale_colour_manual(name="Pipette:", values=c(Commercial="red", Printed="blue", Adjusted="purple"), guide='legend') +
  #guides(colour = guide_legend(override.aes = list(shape=c(22, 22, 21)))) +
  theme(legend.position="none")

grid.arrange(plot1, plot2, plot3, plot4, ncol=4, left = "Volume (μL)", bottom = "Nominal Volume", top="100-1000 μL Pipettes")


#ggplot(data_1000uL[3,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
#  geom_boxplot(stat = 'identity') +
#  geom_point(aes(nominal, y=`commercial`, colour="Commercial"), size=5, shape=23)+
#  geom_point(aes(nominal, y=`printed`, colour="Printed"), size=5, shape=22 ) +
#  geom_point(aes(nominal, y=`adjusted`, colour="Adjusted"), size=5, shape=21 )+
#  theme(axis.text.x=element_blank())+
#  labs(x="200 μL",y="Volume (μL)") +
#  scale_colour_manual(name="Pipette:", values=c(Commercial="red", Printed="blue", Adjusted="purple"), guide='legend') +
#  guides(colour = guide_legend(override.aes = list(shape=c(21, 23, 22))))

#ggplot(data_1000uL[4,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
#  geom_boxplot(stat = 'identity') +
#  geom_point(aes(nominal, y=`commercial`, fill=""), size=5, shape=21)+
#  geom_point(aes(nominal, y=`printed`, colour="Printed"), size=5, shape=22 ) +
#  geom_point(aes(nominal, y=`adjusted`, colour="Adjusted", fill="Adjusted"), size=5, shape=22 )+
#  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank())+
#  labs(x="100 μL") +
  #scale_colour_manual(name="Pipette:", values=c(Commercial="red", Printed="blue", Adjusted="purple"), guide='legend') +
  #guides(colour = guide_legend(override.aes = list(shape=c(22, 22, 21)))) +
#  theme(legend.position="none")

#ggplot(data_1000uL[3,], aes(x=nominal, ymin = `low`, ymax = `high`, lower = `low`, upper = `high`, middle = `nominal`)) + 
#  geom_boxplot(stat = 'identity') +
#  geom_point(aes(nominal, y=`commercial`), size=5, shape=21)+
#  geom_point(aes(nominal, y=`printed`), size=5, shape=22, fill="black" ) +
#  geom_point(aes(nominal, y=`adjusted`), size=5, shape=22)+
#  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
#  labs(x="200 μL")
