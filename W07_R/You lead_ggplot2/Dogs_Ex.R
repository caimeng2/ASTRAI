install.packages("ggplot2") # data visualization
install.packages("tidyverse") # data visualization

library("ggplot2") 
d <-read_excel("C:/Users/willi/OneDrive/Escritorio/TU Darmstadt/WiSe 24-25/2. E.R in the AI era/You lead/Dogs_Example.xlsx")

ggplot(data=Dogs_Example)+
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g))

ggplot(data=Dogs_Example)+ #an it goes on and on
  geom_col(mapping=aes(x=breed, y=body_mass_g))

ggplot(data=Dogs_Example)+ #now we proceed to much some other aesthetics
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))

ggplot(data=Dogs_Example)+ #now some more 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, shape=breed, color=breed))

ggplot(data=Dogs_Example)+ #and more... we have a wide range of options to manipulate our plots to present them 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, shape=breed, color=breed, size=breed))

ggplot(data=Dogs_Example)+ #alpha to control the transparency...good option when there is a dense plot and points
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, alpha=breed))

ggplot(data=Dogs_Example)+ #what about making all points of a single color... like blue
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g),color="blue")

ggplot(data=Dogs_Example)+ #or red...
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g),color="red")

ggplot(data=Dogs_Example)+ #now inside and outside...
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, alpha=breed),color="red")

ggplot(data=Dogs_Example)+ #with points...all changing the geom...
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g))

ggplot(data=Dogs_Example)+ #with smooth line
  geom_smooth(mapping=aes(x=leg_length_mm, y=body_mass_g))

ggplot(data=Dogs_Example)+ #both at the same time
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g))+
  geom_smooth(mapping=aes(x=leg_length_mm, y=body_mass_g))

ggplot(data=Dogs_Example)+ #what about a separate line for every breed
  geom_smooth(mapping=aes(x=leg_length_mm, y=body_mass_g, linetype=breed))

ggplot(data=Dogs_Example)+ #jitter creates a scatter plot and adds some random noise
  geom_jitter(mapping=aes(x=leg_length_mm, y=body_mass_g, linetype=breed))

#Diamonds: Quality, clarity and cut of over 50.000 diamonds!! It is already included in ggplot2 package
ggplot(data=diamonds)+ #
  geom_bar(mapping=aes(x=cut))

ggplot(data=diamonds)+ #manipulating the aesthetics again... 
  geom_bar(mapping=aes(x=cut, color=cut))

ggplot(data=diamonds)+ #if we want to differentiate this even more... 
  geom_bar(mapping=aes(x=cut, fill=cut))

ggplot(data=diamonds)+ #stacked bar chart: adding a new variable (clarity)... 
  geom_bar(mapping=aes(x=cut, fill=clarity))

#Once more with the penguins:
ggplot(data=Dogs_Example)+ #
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  facet_wrap(~breed)

#Once more with diamonds:
ggplot(data=diamonds)+ #a separate plot for each cut category, not everything st once... 
  geom_bar(mapping=aes(x=cut, fill=cut))+
  facet_wrap(~cut)

#Once more with the penguins:
ggplot(data=Dogs_Example)+ #now faceting with more variables: 2 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  facet_wrap(sex~breed)

ggplot(data=Dogs_Example)+ #now faceting with more variables: 2 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  facet_grid(sex~breed)

ggplot(data=Dogs_Example)+ #now faceting with more variables: 2 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  facet_grid(~breed)

ggplot(data=Dogs_Example)+ #now faceting with more variables: 2 
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  facet_grid(~sex)

#Labels - outside the grid
ggplot(data=Dogs_Example)+ #adding titles
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  labs(title="Dogs in the shelter: Body Mass vs. Leg Length")

ggplot(data=Dogs_Example)+ #adding titles+subtitles
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  labs(title="Dogs in the Shelter: Body Mass vs. Leg Length", subtitle="Sample of Three Dog Breeds")

ggplot(data=Dogs_Example)+ #adding titles+subtitles+caption(source of the data)
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  labs(title="Dogs in the Shelter: Body Mass vs. Leg Length", subtitle="Sample of Three Dog Breeds", caption="Data collected by Dr. Albert Einstein")

#Annotations - Inside
ggplot(data=Dogs_Example)+ #adding titles+subtitles+caption+ annotation
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  labs(title="Dogs in the Shelter: Body Mass vs. Leg Length", subtitle="Sample of Three Dog Breeds", caption="Data collected by Dr. Albert Einstein")+
  annotate("text", x=210, y=4000,label="Beagles are the best breed!!")

ggplot(data=Dogs_Example)+ #changing aesthetics again
  geom_point(mapping=aes(x=leg_length_mm, y=body_mass_g, color=breed))+
  labs(title="Dogs in the Shelter: Body Mass vs. Leg Length", subtitle="Sample of Three Dog Breeds", caption="Data collected by Dr. Albert Einstein")+
  annotate("text", x=210, y=4000,label="Beagles are the best breed!!", color="blue", fontface="bold", size=5.1, angle=45)
