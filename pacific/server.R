

library(shiny)


shinyServer(function(input, output) {
    
   output$results <- renderTable({
      
       
       
       
       
       i = 1
       b = numeric()
       t = numeric()
       
       while (i <= input$SIMS) {
           # current records
           Phoenix <- 30
           Clippers <- 30
           
           Phoenixwinprobs <- c(input$MIL,input$PHI,input$BOS,input$BKN, input$NYK,input$UTA, input$OKC, input$CLE, 
                               input$ATL, input$NYK2, input$LAL, input$GSW, input$POR, input$SAS, input$SAS2)
           
           Phoenixgameresults <- rbinom(length(Phoenixwinprobs),1,Phoenixwinprobs)
           
           Clipperswinprobs <- c(input$tPOR, input$tMEM, input$tHOU, input$tNOP, input$tDEN, input$tTOR, input$tLAL, input$tNYK, input$tTOR2,
                                input$tCHA, input$tHOU2, input$tOKC)
           
           
           Clippersgameresults <- rbinom(length(Clipperswinprobs),1,Clipperswinprobs)
           clash <- rbinom(1,1,input$LAC)
           
           Phoenix <- Phoenix + sum(Phoenixgameresults) + clash
           Clippers <- Clippers + sum(Clippersgameresults) + abs(clash-1)
           
           b[i] = Phoenix
           t[i] = Clippers
           i = i + 1
       
           
               
       }
       
       Phoenix = (sum(b>t)/input$SIMS) *100
       Clippers = (sum(t>b)/input$SIMS) * 100
       TIE = (sum(b==t)/input$SIMS) * 100
       
       
    
       data.frame(Phoenix,Clippers, TIE)
       
   })
    

})