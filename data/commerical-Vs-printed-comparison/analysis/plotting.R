# ISO 1000-100
ISO_1000uL <- read.csv(file='1000uL_ISO.csv', sep=',')
eppendorf_1000 <- read.csv(file='eppendorf-1000-analyzed.csv', sep=',')
printed_analyzed <- read.csv(file='printed_analyzed.csv', sep=',')
ISO_plot_1000 = c(printed_analyzed[1:4,"Mean"])
ISO_plot_1000 = as.data.frame(ISO_plot_1000)
colnames(ISO_plot_1000) <- c("Printed")
ISO_plot_1000$ plus = ISO_1000uL[1:4,"plus"]
ISO_plot_1000$ minus = ISO_1000uL[1:4,"minus"]
ISO_plot_1000$ commercial = eppendorf_1000[1:4,"Mean"]
ISO_plot_1000$ nominal <- c("1000uL", "500uL", "200uL", "100uL")
#ISO_plot_1000$nominal <- as.character(ISO_plot_1000$nominal)
ISO_plot_1000$nominal <- factor(ISO_plot_1000$nominal, levels=unique(ISO_plot_1000$nominal))


library(ggplot2)
ggplot(ISO_plot_1000[3:4,], aes(x=nominal, ymin = `minus`, 
                                ymax = `plus`, lower = `minus`, 
                                upper = `plus`, middle = `commercial`)) + 
  geom_boxplot(stat = 'identity') +
  xlab('Nominal Volume') + 
  ylab('Volume') +
  geom_crossbar(aes(y = `commercial`), linetype = 1)+
  geom_crossbar(aes(y = `Printed`), linetype = 2)


#ISO 300
ISO_300uL <- read.csv(file='300uL_ISO.csv', sep=',')
commercial_analyzed <- read.csv(file='commercial_analyzed.csv', sep=',')
ISO_plot_300 = commercial_analyzed["Mean"]
#ISO_plot_300 = as.data.frame(ISO_mean)
ISO_plot_300$ nominal <- c("200uL", "50uL", "20uL", "10uL")
ISO_plot_300$ nominal <- factor(ISO_plot_300$ nominal, levels=unique(ISO_plot_300$nominal))
ISO_plot_300$ printed = printed_analyzed[6:9,"Mean"]
ISO_plot_300$ plus = ISO_300uL[1:4,"plus"]
ISO_plot_300$ minus = ISO_300uL[1:4,"minus"]

library(ggplot2)
ggplot(ISO_plot_300[1:2,], aes(x=nominal,ymin = `minus`, 
              ymax = `plus`, lower = `minus`, 
              upper = `plus`, middle = `Mean`)) + 
  geom_boxplot(stat = 'identity') +
  xlab('Nominal Volume') + 
  ylab('Volume') +
  geom_crossbar(aes(y = `Mean` ), color='black', linetype = 1)+
  geom_crossbar(aes(y = `printed`), linetype = 2)

# ISO 100
ISO_100uL <- read.csv(file='100uL_ISO.csv', sep=',')
#eppendorf_1000 <- read.csv(file='eppendorf-1000-analyzed.csv', sep=',')
printed_analyzed <- read.csv(file='printed_analyzed.csv', sep=',')
ISO_plot_1000 = c(printed_analyzed[1:4,"Mean"])
ISO_plot_1000 = as.data.frame(ISO_plot_1000)
colnames(ISO_plot_1000) <- c("Printed")
ISO_plot_1000$ plus = ISO_1000uL[1:4,"plus"]
ISO_plot_1000$ minus = ISO_1000uL[1:4,"minus"]
ISO_plot_1000$ commercial = eppendorf_1000[1:4,"Mean"]
ISO_plot_1000$ nominal <- c("1000uL", "500uL", "200uL", "100uL")
#ISO_plot_1000$nominal <- as.character(ISO_plot_1000$nominal)
ISO_plot_1000$nominal <- factor(ISO_plot_1000$nominal, levels=unique(ISO_plot_1000$nominal))


library(ggplot2)
ggplot(ISO_plot_1000[3:4,], aes(x=nominal, ymin = `minus`, 
                                ymax = `plus`, lower = `minus`, 
                                upper = `plus`, middle = `commercial`)) + 
  geom_boxplot(stat = 'identity') +
  xlab('Nominal Volume') + 
  ylab('Volume') +
  geom_crossbar(aes(y = `commercial`), linetype = 1)+
  geom_crossbar(aes(y = `Printed`), linetype = 2)

