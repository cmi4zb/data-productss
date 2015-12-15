library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Course Project"),
  sidebarPanel(

    selectInput('X', 'x axis', choices= colnames(iris)),
    selectInput('Y', 'Y axis', choices= colnames(iris)),
    h4('you can explore the relationship between flower attributes by utilizing the drop down')

    
),
  mainPanel(
    h4('Select dropdown options to alter graph'),
    plotOutput('plot1')
    
  )
 ))




