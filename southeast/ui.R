
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
           
            numericInput("PHI2", "PHI away Win Prob:", min = 0, max = 1, value = 0.22),
            numericInput("CHI", "CHI home Win Prob:", min = 0, max = 1, value = 0.6),
            numericInput("POR", "POR home Win Prob:", min = 0, max = 1, value = 0.48),
            numericInput("PHO", "PHO home Win Prob:", min = 0, max = 1, value = 0.32),
            numericInput("IND2", "IND away Win Prob:", min = 0, max = 1, value = 0.59),
            numericInput("WAS", "WAS home Win Prob:", min = 0, max = 1, value = 0.62),
            numericInput("WAS2", "WAS home Win Prob:", min = 0, max = 1, value = 0.62),
            numericInput("ORL2", "ORL home Win Prob:", min = 0, max = 1, value = 0.84),
            numericInput("HOU", "HOU home Win Prob:", min = 0, max = 1, value = 0.82),
            
            img(src="https://wallpapercave.com/wp/ma7u3qF.jpg", width = "25%", height="25%"),
            titlePanel("MiamiGames"),
            
            numericInput("tCLE", "CLE away Win Prob:", min = 0, max = 1, value = 0.77),
            numericInput("tCHA", "CHA away Win Prob:", min = 0, max = 1, value = 0.62),
            numericInput("tDAL", "DAL home Win Prob:", min = 0, max = 1, value = 0.46),
            numericInput("tMIN", "MIN home Win Prob:", min = 0, max = 1, value = 0.72),
            numericInput("tBOS", "BOS away Win Prob:", min = 0, max = 1, value = 0.46),
            numericInput("tBOS2", "BOS away Win Prob:", min = 0, max = 1, value = 0.46),
            numericInput("tPHI", "PHI home Win Prob:", min = 0, max = 1, value = 0.37),
            numericInput("tMIL", "MIL away Win Prob:", min = 0, max = 1, value = 0.35),
            numericInput("tDET", "DET away Win Prob:", min = 0, max = 1, value = 0.8),
            
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
