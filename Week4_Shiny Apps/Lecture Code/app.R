# Class: 7

# Date: 7/1/2021

# Author: Ken Faro, Ph.D.

# Copyright: All Documents © Dr. Kenneth R. Faro or © Inkblot Holdings, LLC

# License: Faro and Inkblot Educational License For One Semester Use

# Disclosure: These materials are subject to the terms of the "Notice of Faro and 
#             Inkblot Educational License For One Semester Use", posted in this repository. 

####################################################
########## Learning Basic Shiny Apps      ########## 
####################################################

library(shiny)
library(ggplot2)
library(plotly)

# Define UI 
ui <- fluidPage(
    titlePanel("Ritz Boston Customer Satisfaction"),
    
    #Opening Sidebar Layout
    sidebarLayout(
        
        #open sidebar
        sidebarPanel(
            
            selectInput(inputId = "question",
                        label = "Select A Question:",
                        choices = c("satCleanRoom",
                                    "satCleanBath",
                                    "satCleanCommon",
                                    "satFrontStaff",
                                    "satDiningStaff")
                        )
        
        #close sidebar panel    
        ),
        
        #open main panel
        mainPanel(
            
            plotlyOutput("plot1")
            
        #close main panel    
        )

    #Close sidebar Layout        
    )
 
#Close UI    
)

# Define server logic 
server <- function(input, output) {

#load df     
hotel.df <- read.csv("https://goo.gl/oaWKgt")

#plot <- ggplot(hotel.df, aes(satCleanRoom))+geom_bar()
#output plot
#output$plot1 <- renderPlot(plot) 

observe({

#
if(input$question=="satCleanRoom"){
    plot <- ggplot(hotel.df, aes(satCleanRoom))+geom_bar()
} else if(input$question=="satCleanBath"){
    plot <- ggplot(hotel.df, aes(satCleanBath))+geom_bar()
} else if(input$question=="satCleanCommon"){
    plot <- ggplot(hotel.df, aes(satCleanCommon))+geom_bar()
} else if(input$question=="satFrontStaff"){
    plot <- ggplot(hotel.df, aes(satFrontStaff))+geom_bar()
} else if(input$question=="satDiningStaff"){
    plot <- ggplot(hotel.df, aes(satDiningStaff))+geom_bar()
}

output$plot1 <- renderPlotly({ 
    plot2<-ggplotly(plot)
    plot2
#close output plot    
})
#close observe function
})

#Close Server       
}

# Run the application 
shinyApp(ui = ui, server = server)
