## library(shiny)
shinyServer(function(input, output) {
     output$graph <- renderPlot({
          numsim = input$numsim
          n = input$n
          l = input$lambda
          sample = NULL
          for (i in 1 : numsim) sample = c(sample, mean(rexp(n,l)))
          hist(sample)
     })
})

## setwd("~/....")
## runApp()