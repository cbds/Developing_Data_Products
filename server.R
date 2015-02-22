library(shiny)
# number of rolls
roll <<- 1
shinyServer(
  function(input, output) {
    output$line1 <- renderText({
      paste('Your guess:', input$guess)
    })
    output$line2 <- renderText({
      input$rollButton
      isolate(
      	if (input$rollButton > 0) {
	  paste(roll, 'rolls')
	} else {
	  ''
	}
      )
    })
    output$line3 <- renderText({
      n <<- sample(1:6, 1)
      s <<- paste('The roll was a', n)
      input$rollButton
      isolate(
      	if (input$rollButton > 0) {
	  roll <<- roll + 1
	  if (as.integer(input$guess) == n) {
	    s <<- paste(s, " -- you are correct !!")
	    roll <<- 1
	  }
	  s
	}
      )
    })
    output$plot <- renderPlot({
      input$rollButton
      isolate(
	if (input$rollButton > 0) {
	  if (as.integer(input$guess) == n) {
	    x <- 1:30
	    y <- 1 - (5 / 6) ^ x
	    plot(x, y, xlab="Expected number of rolls until a correct guess",
	    	 ylab="Probability", col="red") 
	    lines(x, y)
	  } else {
	    NULL
	  }
	} else {
	  NULL
	}
      )
    })
  }
)
