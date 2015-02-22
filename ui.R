library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Rolling Dice"),
  sidebarPanel(
    p("Instructions:"),
    p(),
    p("1. Guess a number."),
    p("2. Then Click the Roll button to simulate rolling a die."),
    p("3. Repeat until your guess is correct."),
    p(),
    radioButtons('guess', 'Guess a number:',
		c("1"='1',
		  "2"='2',
		  "3"='3',
		  "4"='4',
		  "5"='5',
		  "6"='6')
		),
    actionButton("rollButton", "Roll")
  ),
  mainPanel(
    textOutput("line1"),
    p(),
    textOutput("line2"),
    p(),
    textOutput("line3"),
    p(),
    plotOutput("plot")
  )
))
