library(ggplot2)
library(dplyr)

pdf("ref/surv1.pdf", width=3, height=3)

exp_funct <- function(x){
  exp(-x)
}

ggplot(data.frame(x = c(0, 4)), aes(x = x)) +
  scale_x_continuous(limits=c(0,4),
	  expand = expansion(mult = c(0.05, 0), add = c(0, 0))) +
  scale_y_continuous(limits=c(0,1),
	  expand = expansion(mult = c(0, 0.05), add = c(0, 0))) +
  stat_function(fun = exp_funct) +
  xlab("t") + ylab("S(t)") + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
  panel.border = element_blank(),
  axis.line = element_line(colour = "black"),
  axis.ticks.x = element_blank(),
  axis.text.x = element_blank())

dev.off()

pdf("ref/surv2.pdf", width=3, height=3)

c_funct <- function(x){
  1
}

ggplot(data.frame(x = c(0, 4)), aes(x = x)) +
  scale_x_continuous(limits=c(0,4),
	  expand = expansion(mult = c(0.05, 0), add = c(0, 0))) +
  scale_y_continuous(limits=c(0,1),
	  expand = expansion(mult = c(0, 0.05), add = c(0, 0))) +
  stat_function(fun = c_funct) +
  xlab("t") + ylab("S(t)") + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
  panel.border = element_blank(),
  axis.line = element_line(colour = "black"),
  axis.ticks.x = element_blank(),
  axis.text.x = element_blank())

dev.off()

pdf("ref/surv3.pdf", width=3, height=3)

exp_funct <- function(x){
  0.1+0.9*exp(-x)
}

ggplot(data.frame(x = c(0, 4)), aes(x = x)) +
  scale_x_continuous(limits=c(0,4),
	  expand = expansion(mult = c(0.05, 0), add = c(0, 0))) +
  scale_y_continuous(limits=c(0,1),
	  expand = expansion(mult = c(0, 0.05), add = c(0, 0))) +
  stat_function(fun = exp_funct) +
  xlab("t") + ylab("S(t)") + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
  panel.border = element_blank(),
  axis.line = element_line(colour = "black"),
  axis.ticks.x = element_blank(),
  axis.text.x = element_blank()) +
  annotate("rect", xmin = 0, xmax = 4, ymin = 0, ymax = 0.1, alpha = .2) +
  annotate("text", x = 2, y = 0.05, label="Cured fraction")

dev.off()
