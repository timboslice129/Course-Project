
library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("darkly"),

    
    titlePanel("Toronto Boston Division Simulation"),

   
    sidebarLayout(
        sidebarPanel(
            fluidRow(
                
                column(2,
                       submitButton(text = "RUN")),
                column(6, offset = 2, numericInput("SIMS", "SIMS", min=100, max = 1000000, value = 10000)),
            ),
            img(src="https://images.vexels.com/media/users/3/129509/isolated/preview/b9439b4f4a5115e4e7995ab6450ab1b0-boston-celtics-logo-by-vexels.png", width = "25%", height="25%"),
            titlePanel("BostonGames"),
            numericInput("OKC", "OKC home Win Prob:", min = 0, max = 1, value = 0.73),
            numericInput("IND1", "IND away Win Prob:", min = 0, max = 1, value = 0.5),
            numericInput("MIL1", "MIL away Win Prob:", min = 0, max = 1, value = 0.2),    
            numericInput("WAS1", "WAS home Win Prob:", min = 0, max = 1, value = 0.86),
            numericInput("CHI1", "CHI away Win Prob:", min = 0, max = 1, value = 0.73),
            numericInput("NYK", "NYK home Win Prob:", min = 0, max = 1, value = 0.93),
            numericInput("TOR", "TOR away Win Prob:", min = 0, max = 1, value = 0.33),
            numericInput("BKN", "BKN away Win Prob:", min = 0, max = 1, value = 0.59),
            numericInput("WAS2", "WAS away Win Prob:", min = 0, max = 1, value = 0.64),
            numericInput("MEM", "MEM away Win Prob:", min = 0, max = 1, value = 0.56),
            numericInput("POR", "POR home Win Prob:", min = 0, max = 1, value = 0.78),
            numericInput("MIN", "MIN home Win Prob:", min = 0, max = 1, value = 0.85),
            numericInput("MIA1", "MIA home Win Prob:", min = 0, max = 1, value = 0.7),
            numericInput("ORL1", "ORL home Win Prob:", min = 0, max = 1, value = 0.82),
            numericInput("MIL2", "MIL home Win Prob:", min = 0, max = 1, value = 0.38),
            numericInput("IND2", "IND home Win Prob:", min = 0, max = 1, value = 0.77),
            numericInput("ORL2", "Orlando away Win Prob:", min = 0, max = 1, value = 0.63),
            numericInput("MIA2", "MIA away Win Prob:", min = 0, max = 1, value = 0.32),
            numericInput("DET", "DET away Win Prob:", min = 0, max = 1, value = 0.82),
            numericInput("CHI2", "CHI home Win Prob:", min = 0, max = 1, value = 0.77),
            img(src="https://lh6.googleusercontent.com/-qf74V1Jsczg/TX9OOVv5-bI/AAAAAAAALo0/W4o3N0aU3w0/s1600/Toronto_Raptors_Logo8.jpg", width = "25%", height="25%"),
            titlePanel("TorontoGames"),
            numericInput("tSAC", "SAC away Win Prob:", min = 0, max = 1, value = 0.66),
            numericInput("tUTA", "UTA away Win Prob:", min = 0, max = 1, value = 0.4),
            numericInput("tDET", "DET home Win Prob:", min = 0, max = 1, value = 0.95),
            numericInput("tGSW2", "CHI home Win Prob:", min = 0, max = 1, value = 0.94),
            numericInput("tPHI", "PHI away Win Prob:", min = 0, max = 1, value = 0.35),
            numericInput("tBOS", "BOS home Win Prob:", min = 0, max = 1, value = 0.67),
            numericInput("tDEN", "DEN home Win Prob:", min = 0, max = 1, value = 0.67),
            numericInput("tLAL", "LAL home Win Prob:", min = 0, max = 1, value = 0.47),
            numericInput("tNYK1", "NYK away Win Prob:", min = 0, max = 1, value = 0.72),
            numericInput("tMEM1", "MEM away Win Prob:", min = 0, max = 1, value = 0.55),
            numericInput("tMEM2", "MEM home Win Prob:", min = 0, max = 1, value = 0.8),
            numericInput("tMIL1", "MIL away Win Prob:", min = 0, max = 1, value = 0.11),
            numericInput("tMIL2", "MIL home Win Prob:", min = 0, max = 1, value = 0.37),
            numericInput("tHOU", "HOU away Win Prob:", min = 0, max = 1, value = 0.32),
            numericInput("tWAS", "WAS away Win Prob:", min = 0, max = 1, value = 0.7),
            numericInput("tCHA", "CHA away Win Prob:", min = 0, max = 1, value = 0.7),
            numericInput("tATL", "ATL home Win Prob:", min = 0, max = 1, value = 0.89),
            numericInput("tNYK2", "NYK home Win Prob:", min = 0, max = 1, value = 0.92),
            numericInput("tMIA", "MIA away Win Prob:", min = 0, max = 1, value = 0.3),
            numericInput("tORL", "ORL away Win Prob:", min = 0, max = 1, value = 0.6),
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
           
           tags$h5("User Guide", align = "middle"),
           tags$p("This is a monte carlo simulation that aims to predict which team will finish the 2019/2020 NBA season with more wins and therefore win the division
                  "),
           tags$p("It takes the win probabilites of every remaining game for both teams and then runs a specified number of simulations and returns the likelihood of either team winning as a percentage"),
           tags$p("The sim runs on startup using the default probabilites but you can input your own selections and click run, this will rerun the app"),
           tags$p("Note that players are often injured or returning which changes the likelihood of teams winning or losing so the ability to adjust win probabilites is crucial"),
           tags$p("You can manually adjust the number of simulations, however if you select a large number the simulation will take a long time. We believe 10000 simulations is a large enough sample size"),
           tags$p("For games that have already been played you input 0 for a loss and 1 for a win"), 
         
           
        )
    )
))
