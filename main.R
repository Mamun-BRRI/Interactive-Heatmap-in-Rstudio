### Draw a Heatmap
R<-read.csv("Data.csv")
R
attach(R)
library(ggplot2)
##
ggplot(R,aes(Env,Gen,fill=GY))+
  geom_tile(color="black")+
  scale_fill_gradient(low = "white",high = "orange")
ggsave("Figure 1.png",height = 7,width = 14,dpi = 200)
#####
ggplot(R,aes(Env,Gen,fill=GY))+
  geom_tile(color="black")+
  scale_fill_distiller(palette = "Greens",direction = 1)+
  geom_text(label=GY,nudge_x = 0.25,nudge_y = 0.25,color="yellow")+
  geom_text(label=GP)+
  geom_text(label=PN,nudge_x = -0.25,nudge_y = -0.25,color="red")
ggsave("Figure 2.png",height = 7,width = 14,dpi = 200)
#####

P1<-ggplot(R,aes(Env,Gen,fill=GY))+
  geom_tile(color="black")+
  scale_fill_distiller(palette = "Greens",direction = 1)+
  geom_text(label=GY,nudge_x = 0.25,nudge_y = 0.25,color="yellow")
P1

library(metan)
P1+P1+P1+P1
ggsave("Figure 3.png",height = 7,width = 14,dpi = 200)
#######################

ggplot(R,aes(Env,Gen,fill=GY))+
  geom_tile(color="black")+
  scale_fill_distiller(palette = "Greens",direction = 1)+
  geom_text(label=GY,nudge_x = 0.25,nudge_y = 0.25,color="yellow")+
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggsave("Figure 4.png",height = 7,width = 14,dpi = 200)
