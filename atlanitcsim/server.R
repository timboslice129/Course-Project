

library(shiny)


shinyServer(function(input, output) {
    
   output$results <- renderTable({
      
       
       
       
       
       i = 1
       b = numeric()
       t = numeric()
       
       while (i <= input$SIMS) {
           # current records
           philadelphia <- 37
           brooklyn <- 38
           
           philadelphiawinprobs <- c(input$GSW,input$PHO,input$MIL,input$MIL2, input$OKC, input$ATL, input$ATL2,input$SAS, input$CHI, input$HOU, 
                               input$NOP, input$DET, input$IND, input$MIA, input$ORL, input$ORL2)
           
           philadelphiagameresults <- rbinom(length(philadelphiawinprobs),1,philadelphiawinprobs)
           
           brooklynwinprobs <- c(input$tMIA, input$tNOP, input$tTOR, input$tBOS, input$tPHO, input$tTOR2, input$tIND, input$tPOR, input$tMIL,
                                input$tMIL2, input$tDAL, input$tDEN, input$tCHI, input$tSAS, input$tCHI2, input$tCLE)
           
           
           brooklyngameresults <- rbinom(length(brooklynwinprobs),1,brooklynwinprobs)
           
           
           philadelphia <- philadelphia + sum(philadelphiagameresults) 
           brooklyn <- brooklyn + sum(brooklyngameresults) 
           
           b[i] = philadelphia
           t[i] = brooklyn
           i = i + 1
       
           
               
       }
       
       PHILADELPHIA = (sum(b>t)/input$SIMS) *100
       BROOKLYN = (sum(t>b)/input$SIMS) * 100
       TIE = (sum(b==t)/input$SIMS) * 100
       
       
    
       data.frame(PHILADELPHIA,BROOKLYN, TIE)
       
   })
    

})