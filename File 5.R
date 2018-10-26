library(dplyr)



#gears
t2=table(mtcars$gear)
pie(t2)
19/32*360
barplot(t2, labels=c('three','four','five'))
barplot(t2,col=c('green','blue','pink'))

title(main='distribution of Gears of Cars',sub='No of Gears')
#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))
#select for columns, slice for rows
mtcars %>% arrange(mpg) 

barplot(t2,col=1:3)

#display rownames with mgp
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11), size=2)) %>% head

Sample(x=1:11, size=2)

mtcars %>% mutate(newmpg=mpg*1.1)
mutate(mtcars, newmpg=mpg*1.2)

#type of Tx, mean(mgp)
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg), MaxHP=max(hp), MinWT=min(wt))
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG=mean(mpg))

