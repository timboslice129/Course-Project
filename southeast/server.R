

library(shiny)


shinyServer(function(input, output) {
    
   output$results <- renderTable({
      
       
       
       
       
       i = 1
       b = numeric()
       t = numeric()
       
       while (i <= input$SIMS) {
           # current records
           Atlanta <- 30
           Miami <- 28
           
           Atlantawinprobs <- c(input$IND,input$ORL,input$NYK,input$MIL, input$DET, input$PHI,input$PHI2, input$CHI, input$POR, 
                               input$PHO, input$IND2, input$WAS, input$WAS2, input$ORL2, input$HOU)
           
           Atlantagameresults <- rbinom(length(Atlantawinprobs),1,Atlantawinprobs)
           
           Miamiwinprobs <- c(input$tBKN, input$tSAS, input$tCHI, input$tCHI2, input$tSAS2, input$tCLE, input$tCHA, input$tDAL, input$tMIN,
                                input$tBOS, input$tBOS2, input$tPHI, input$tMIL, input$tDET)
           
           
           Miamigameresults <- rbinom(length(Miamiwinprobs),1,Miamiwinprobs)
           clash <- rbinom(1,1,input$MIA)
           
           Atlanta <- Atlanta + sum(Atlantagameresults) + clash
           Miami <- Miami + sum(Miamigameresults) + abs(clash-1)
           
           b[i] = Atlanta
           t[i] = Miami
           i = i + 1
       
           
               
       }
       
       Atlanta = (sum(b>t)/input$SIMS) *100
       Miami = (sum(t>b)/input$SIMS) * 100
       TIE = (sum(b==t)/input$SIMS) * 100
       
       
    
       data.frame(Atlanta,Miami, TIE)
       
   })
    

})