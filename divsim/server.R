

library(shiny)


shinyServer(function(input, output) {
    
   output$results <- renderTable({
      
       
       
       
       
       i = 1
       b = numeric()
       t = numeric()
       
       while (i <= input$SIMS) {
           # current records
           boston <- 42
           toronto <- 44
           
           bostonwinprobs <- c(input$OKC,input$IND1,input$MIL1,input$WAS1, input$CHI1, input$NYK, input$BKN,input$WAS2, input$MEM, input$POR, 
                               input$MIN, input$MIA1, input$ORL1, input$MIL2, input$IND2, input$ORL2, input$MIA2, input$DET, input$CHI2)
           
           bostongameresults <- rbinom(length(bostonwinprobs),1,bostonwinprobs)
           
           torontowinprobs <- c(input$tSAC, input$tUTA, input$tDET, input$tGSW2, input$tPHI, input$tDEN, input$tLAL, input$tNYK1, input$tMEM1,
                                input$tMEM2, input$tMIL1, input$tMIL2, input$tHOU, input$tWAS, input$tCHA, input$tATL, input$tNYK2, input$tMIA, input$tORL)
           
           
           torontogameresults <- rbinom(length(torontowinprobs),1,torontowinprobs)
           clash <- rbinom(1,1,input$TOR)
           
           boston <- boston + sum(bostongameresults) + clash
           toronto <- toronto + sum(torontogameresults) + abs(clash-1)
           
           b[i] = boston
           t[i] = toronto
           i = i + 1
       
           
               
       }
       
       BOSTON = (sum(b>t)/input$SIMS) *100
       TORONTO = (sum(t>b)/input$SIMS) * 100
       TIE = (sum(b==t)/input$SIMS) * 100
       
       
    
       data.frame(BOSTON,TORONTO, TIE)
       
   })
    

})