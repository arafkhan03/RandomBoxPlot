#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Random Numbers to Generate a Box-Plot
shinyServer(function(input, output) {

    output$boxPlot <- renderPlot({

        # generate numbers from ui.R and draw boxplot
        x <- rnorm(input$numbers)
        boxplot(x, ylab = "Range", col = "Light Green", 
                main = "Box-Plot from Random Numbers")

    })

})
