library(shiny)
library(datasets)
data(Titanic)



shinyServer(function(input, output) {

   a<- reactive(as.numeric(input$s1))
   b<- reactive(as.numeric(input$s2))
   c<- reactive(as.numeric(input$s3))
   x<- reactive(Titanic[a(),b(),c(),2]/(Titanic[a(),b(),c(),2]+Titanic[a(),b(),c(),1]))
   
output$se<- renderText({x()})
})