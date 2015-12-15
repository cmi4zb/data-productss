
library(shiny)

shinyServer(
  function(input,output) {
    

    newdata1 <- reactive({
      iris[, c(input$X,input$Y)]
  })
    
    output$plot1 <- renderPlot({
      plot(newdata1(), main= "Iris data")
    
    })
  })



