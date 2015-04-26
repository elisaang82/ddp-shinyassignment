library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("This is a child's height predictor!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      h5("Please specify the gender of the child, and the parents' heights below."),
      radioButtons("gender", "Child's gender:",
                   c("Female" = "f",
                     "Male" = "m")),
      sliderInput("motherheight",
                  "Mother's height in cm:",
                  min = 100,
                  max = 250,
                  value = 150),
      sliderInput("fatherheight",
                  "Father's height in cm:",
                  min = 100,
                  max = 250,
                  value = 170)
    ),
    
    mainPanel(
      h3("The predicted height in cm is :"),
      h2(textOutput("pHeight"))
    )
  )
))