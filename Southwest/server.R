

library(shiny)


shinyServer(function(input, output) {
    
   output$results <- renderTable({
      
       
       
       
       
       i = 1
       b = numeric()
       t = numeric()
       
       while (i <= input$SIMS) {
           # current records
           Dallas <- 30
           Memphis <- 29
           
           Dallaswinprobs <- c(input$SAC,input$DET,input$LAL,input$LAL2, input$SAC2, input$GSW,input$DET2, input$WAS, input$SAC3, 
                               input$MIA, input$BKN, input$CLE, input$CLE2, input$NOP, input$TOR, input$MIN)
           
           Dallasgameresults <- rbinom(length(Dallaswinprobs),1,Dallaswinprobs)
           
           Memphiswinprobs <- c(input$tDEN, input$tLAC, input$tPOR, input$tPOR2, input$tDEN2, input$tPOR3, input$tORL, input$tORL2, input$tNYK,
                                input$tMIN, input$tDET, input$tTOR, input$tNOP, input$tSAC, input$tSAC2, input$tGSW)
           
           
           Memphisgameresults <- rbinom(length(Memphiswinprobs),1,Memphiswinprobs)
           clash <- rbinom(1,1,input$MEM)
           
           Dallas <- Dallas + sum(Dallasgameresults) + clash
           Memphis <- Memphis + sum(Memphisgameresults) + abs(clash-1)
           
           b[i] = Dallas
           t[i] = Memphis
           i = i + 1
       
           
               
       }
       
       Dallas = (sum(b>t)/input$SIMS) *100
       Memphis = (sum(t>b)/input$SIMS) * 100
       TIE = (sum(b==t)/input$SIMS) * 100
       
       
    
       data.frame(Dallas,Memphis, TIE)
       
   })
    

})