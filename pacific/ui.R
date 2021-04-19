
library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("darkly"),

    
    titlePanel("Pacific Division"),

   
    sidebarLayout(
        sidebarPanel(
            fluidRow(
                
                column(2,
                       submitButton(text = "RUN")),
                column(6, offset = 2, numericInput("SIMS", "SIMS", min=100, max = 1000000, value = 10000)),
            ),
            img(src="https://content.sportslogos.net/logos/6/238/full/5329.gif", width = "25%", height="25%"),
            titlePanel("PhoenixGames"),
            numericInput("MIL", "MIL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("PHI", "PHI away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("BOS", "BOS away Win Prob:", min = 0, max = 1, value = 0.5),    
            numericInput("BKN", "BKN away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("NYK", "NYK away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("LAC", "LAC home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("UTA", "UTA home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("OKC", "OKC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("CLE", "CLE away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("ATL", "ATL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("NYK2", "NYK home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("LAL", "LAL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("GSW", "GSW away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("POR", "POR home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("SAS", "SAS away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("SAS2", "SAS away Win Prob:", min = 0, max = 1, value = 0.5),
            
            img(src="https://logos-download.com/wp-content/uploads/2016/04/LA_Clippers_logo_logotype_emblem.png", width = "25%", height="25%"),
            titlePanel("ClippersGames"),
            numericInput("tPOR", "POR away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tMEM", "MEM home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tHOU", "HOU away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tNOP", "NOP away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tPHO", "PHO away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDEN", "DEN home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tTOR", "TOR home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tLAL", "LAL home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tNYK", "NYK home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tTOR2", "TOR away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tCHA", "CHA away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tHOU2", "HOU away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tOKC", "OKC away Win Prob:", min = 0, max = 1, value = 0.5),
            
            
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
