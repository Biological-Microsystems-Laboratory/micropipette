ISO_1000uL <- read.csv(file='1000uL_ISO.csv', sep=',')

library(ggplot2)
ggplot(ISO_plot_1000[3,], aes(x=nominal, ymin = `minus`, 
                                ymax = `plus`, lower = `minus`, 
                                upper = `plus`, middle = `minus`+8)) + 
  geom_boxplot(stat = 'identity') +
  #xlab('Nominal Volume') + 
  ylab('Volume')
  #geom_crossbar(aes(y = `commercial`), linetype = 1)+
  #geom_crossbar(aes(y = `Printed`), linetype = 2)
geom_point(ISO_plot_1000[3,], aes(x=nominal, y=`commercial`)
           