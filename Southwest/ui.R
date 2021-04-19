
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
            img(src="https://1000logos.net/wp-content/uploads/2018/05/Dallas-Mavericks-emblem.jpg", width = "25%", height="25%"),
            titlePanel("DallasGames"),
            numericInput("SAC", "SAC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("DET", "DET away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("LAL", "LAL away Win Prob:", min = 0, max = 1, value = 0.5),    
            numericInput("LAL2", "LAL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("SAC2", "SAC home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("GSW", "GSW home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("DET2", "DET home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("WAS", "WAS away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("SAC3", "SAC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("MIA", "MIA home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("BKN", "BKN away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("CLE", "CLE away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("CLE2", "CLE home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("MEM", "MEM home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("NOP", "NOP away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("TOR", "TOR away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("MIN", "MIN home Win Prob:", min = 0, max = 1, value = 0.5),
            
            img(src="https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Memphis_Grizzlies.svg/1200px-Memphis_Grizzlies.svg.png", width = "25%", height="25%"),
            titlePanel("MemphisGames"),
            numericInput("tDEN", "DEN home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tLAC", "LAC home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tPOR", "POR home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tPOR2", "POR home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDEN2", "DEN home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tPOR3", "POR away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tORL", "ORL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tORL2", "ORL home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tNYK", "NYK away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tMIN", "MIN home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDET", "DET home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tTOR", "TOR home Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tNOP", "NOP away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tDAL", "DAL away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tSAC", "SAC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tSAC2", "SAC away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("tGSW", "GSW home Win Prob:", min = 0, max = 1, value = 0.5),
            
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
