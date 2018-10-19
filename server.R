
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$probabilidad <- renderText({
    prob<-dpois(x=0:input$n, lambda=input$l)
    })
})
