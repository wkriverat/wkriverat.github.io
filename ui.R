library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Distribucion Poisson"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    
    sidebarPanel(
      p("Modifique los valores de los parametros lambda y X"),
       
      sliderInput(inputId = "l",
                  label = HTML("&lambda;:"),
                  min = 0,
                  max = 40,
                  value = 5,
                  step= .1,
                  animate = F),
      
       numericInput(inputId= "n",
                   label = "Numero de ocurrencias del evento x",
                   min = 0,
                   max = 500,
                   value = 0,
                   step= 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Probabilidad", align="center"),
         textOutput("probabilidad")
       
    )
  )
)
