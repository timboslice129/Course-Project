
library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("darkly"),

    
    titlePanel("Atlantic Division Simulation"),

   
    sidebarLayout(
        sidebarPanel(
            fluidRow(
                
                column(2,
                       submitButton(text = "RUN")),
                column(6, offset = 2, numericInput("SIMS", "SIMS", min=100, max = 1000000, value = 10000)),
            ),
            img(src="https://upload.wikimedia.org/wikipedia/en/thumb/0/0e/Philadelphia_76ers_logo.svg/1200px-Philadelphia_76ers_logo.svg.png", width = "25%", height="25%"),
            titlePanel("PhiladelphiGames"),
            numericInput("GSW", "GSW away Win Prob:", min = 0, max = 1, value = 0.4),
            numericInput("PHO", "PHO away Win Prob:", min = 0, max = 1, value = 0.4),    
            numericInput("MIL", "MIL home Win Prob:", min = 0, max = 1, value = 0.6),
            numericInput("MIL2", "MIL home Win Prob:", min = 0, max = 1, value = 0.6),
            numericInput("OKC", "OKC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("ATL", "ATL away Win Prob:", min = 0, max = 1, value = 0.4),
            numericInput("ATL2", "ATL away Win Prob:", min = 0, max = 1, value = 0.4),
            numericInput("SAS", "SAS home Win Prob:", min = 0, max = 1, value = 0.64),
            numericInput("CHI", "CHI home Win Prob:", min = 0, max = 1, value = 0.56),
            numericInput("HOU", "HOU home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("NOP", "NOP away Win Prob:", min = 0, max = 1, value = 0.85),
            numericInput("DET", "DET away Win Prob:", min = 0, max = 1, value = 0.7),
            numericInput("IND", "IND home Win Prob:", min = 0, max = 1, value = 0.82),
            numericInput("MIA", "MIA home Win Prob:", min = 0, max = 1, value = 0.38),
            numericInput("ORL", "ORL away Win Prob:", min = 0, max = 1, value = 0.77),
            numericInput("ORL2", "ORL away Win Prob:", min = 0, max = 1, value = 0.63),
            
            img(src="https://content.sportslogos.net/logos/6/3786/full/345_brooklyn-nets-secondary-2013.gif", width = "25%", height="25%"),
            titlePanel("BrooklynGames"),
            numericInput("tMIA", "MIA home Win Prob:", min = 0, max = 1, value = 0.66),
            numericInput("tNOP", "NOP home Win Prob:", min = 0, max = 1, value = 0.4),
            numericInput("tTOR", "TOR home Win Prob:", min = 0, max = 1, value = 0.95),
            numericInput("tBOS", "BOS away Win Prob:", min = 0, max = 1, value = 0.94),
            numericInput("tPHO", "PHO away Win Prob:", min = 0, max = 1, value = 0.35),
            numericInput("tTOR2", "TOR home Win Prob:", min = 0, max = 1, value = 0.67),
            numericInput("tIND", "IND home Win Prob:", min = 0, max = 1, value = 0.67),
            numericInput("tPOR", "POR away Win Prob:", min = 0, max = 1, value = 0.47),
            numericInput("tMIL", "MIL home Win Prob:", min = 0, max = 1, value = 0.72),
            numericInput("tMIL2", "MIL home Win Prob:", min = 0, max = 1, value = 0.55),
            numericInput("tDAL", "DAL home Win Prob:", min = 0, max = 1, value = 0.8),
            numericInput("tDEN", "DEN home Win Prob:", min = 0, max = 1, value = 0.11),
            numericInput("tCHI", "CHI home Win Prob:", min = 0, max = 1, value = 0.37),
            numericInput("tSAS", "SAS away Win Prob:", min = 0, max = 1, value = 0.32),
            numericInput("tCHI2", "CHI away Win Prob:", min = 0, max = 1, value = 0.7),
            numericInput("tCLE", "CLE away Win Prob:", min = 0, max = 1, value = 0.7),
            
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
