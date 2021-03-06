---
title       : Rolling Dice
subtitle    : Simulation in R
author      : Developing Data Products
job         : Coursera
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : die.jpg
---

## Rationale for Dice Rolling Simulation

I wanted a shiny app that met these objectives:

1. Make it fun
2. Keep it simple
3. Use R code and graphics
4. Keep the user interested

---

## Operation of Dice Rolling Simulation

1. Select your guess for the next die roll
2. Click on the Roll button to simulate a die roll
3. Repeat steps 1 and 2 until your guess is correct
4. Use the probability graph to see if you were lucky or unlucky


```r
x <- 1:30
y <- 1 - (5 / 6) ^ x
plot(x, y, xlab="Expected number of rolls until a correct guess",
     ylab="Probability", col="red")
lines(x, y)
```

---

## Analysis of Guessing the Roll of a Die

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---

## Reference URLs

1. http://cbds.shinyapps.io/project
   - Shiny App

2. https://github.com/cbds/Developing_Data_Products
   - github repo containing **ui.R** and **server.R**

3. https://github.com/cbds/Developing_Data_Products
   - github repo containing this slidify presentation

---
