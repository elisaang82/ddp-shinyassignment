library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$pHeight <- renderText({
    if (input$gender == "m") {
      ( (input$motherheight + 13) + input$fatherheight ) / 2
    } else {
      ( (input$fatherheight - 13) + input$motherheight ) / 2
    }
                                
  })
})