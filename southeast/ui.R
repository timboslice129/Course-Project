
library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("darkly"),

    
    titlePanel("Southeast Division"),

   
    sidebarLayout(
        sidebarPanel(
            fluidRow(
                
                column(2,
                       submitButton(text = "RUN")),
                column(6, offset = 2, numericInput("SIMS", "SIMS", min=100, max = 1000000, value = 10000)),
            ),
            img(src="https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Atlanta_Hawks_logo.svg/1200px-Atlanta_Hawks_logo.svg.png", width = "25%", height="25%"),
            titlePanel("AtlantaGames"),
            numericInput("IND", "IND away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("ORL", "ORL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("NYK", "NYK home Win Prob:", min = 0, max = 1, value = 0.5),    
            numericInput("MIA", "MIA away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("MIL", "MIL home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("DET", "DET home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("PHI", "PHI home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("PHI2", "PHI home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("CHI", "CHI away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("POR", "POR away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("PHO", "PHO away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("IND2", "IND home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("WAS", "WAS home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("WAS2", "WAS home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("ORL2", "ORL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("HOU", "HOU away Win Prob:", min = 0, max = 1, value = 0.5),
            
            img(src="https://wallpapercave.com/wp/ma7u3qF.jpg", width = "25%", height="25%"),
            titlePanel("MiamiGames"),
            numericInput("tBKN", "BKN away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tHOU", "HOU away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tSAS", "SAS home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tATL", "ATL home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tCHI", "CHI away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tCHI2", "CHI away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tSAS2", "SAS away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tCLE", "CLE home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tCHA", "CHA home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDAL", "DAL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tMIN", "MIN away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tBOS", "BOS home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tBOS2", "BOS home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tPHI", "PHI away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tMIL", "MIL home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDET", "DET home Win Prob:", min = 0, max = 1, value = 0.5),
            
        ),

        
                    
        
        mainPanel(
            headerPanel(""),
            headerPanel(""),
            headerPanel(""),
            headerPanel(""),
            headerPanel(""),
            headerPanel(""),
           fluidRow(
               column(
                   tableOutput("results"), width = 12, height = 12, align = "middle", space = 10)
               ),
           
          
         
           
        )
    )
))
