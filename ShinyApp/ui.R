#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("BoxPlot from Random Numbers"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("numbers",
                        "How many numbers to generate?",
                        min = 5,
                        max = 3500,
                        value = 200),
            submitButton("Submit!")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            paste("This App generates a box-plot based on random integers. 
                   Just select how many integers you want."
            ),
            plotOutput("boxPlot")
        )
    )
))

