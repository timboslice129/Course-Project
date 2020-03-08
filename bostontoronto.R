##between boston and toronto

#counter
i = 1
#vectors to record boston and toronto wins for each simulation
b = numeric()
t = numeric()
#vectors to record boston and toronto division winning percentages
bosp = numeric()
torp = numeric()

while (i <= 100000) {
  
#curret wins of both teams
toronto <- 43
boston <- 41


##games to be played for boston

#away
CLE = 0.82
#home
UTA = 0.71
OKC = 0.73
#away
IND1 = 0.5
MIL1 = 0.2
#home
WAS1 = 0.86
#away
CHI1 = 0.73
#home
NYK = 0.93
#away
#evaluate separately 
TOR = 0.33
BKN2 = 0.59
WAS2 = 0.64
MEM = 0.56
#home
POR = 0.78
MIN = 0.85
MIA1 = 0.7
ORL1 = .82
MIL2 = 0.38
IND2 = 0.77
#away
ORL2 = 0.63
MIA2 = 0.32
DET = 0.82
#home
CHI2 = 0.77

#generating result of boston toronto h2h from boston perspective. assign to boston
# and inverse to toronto using abs(clash-1)
clash <- rbinom(1,1, TOR)


bostonprobs <- c(CLE, UTA, OKC, IND1, MIL1, WAS1, CHI1,NYK, BKN2,WAS2,MEM, POR, MIN, MIA1, ORL1, MIL2,IND2,ORL2,MIA2,DET,CHI2)
bostongameresults <- rbinom(length(bostonprobs),1,bostonprobs)
boston <- boston + sum(bostongameresults) + clash


#calculting boston division winning % based on current standing and the three games they play vs other teams in div

bostonrecord <- c(7,6)
bostondivclashes <- c(bostongameresults[8],bostongameresults[9],clash)
bostonrecord[1] <- bostonrecord[1]+sum(bostondivclashes)
bostonrecord[2] <- bostonrecord[2] + (3-sum(bostondivclashes))
bostonwinperc <- bostonrecord[1]/sum(bostonrecord)

    
##games to be played for toronto
#away

GSW1 = 0.82
SAC = 0.66
UTA = 0.4
#home
DET = 0.95
GSW2 = 0.94
#away
PHI = 0.35
#home
# BOS = 0.66
DEN = 0.67
LAL = 0.47
#away
NYK1 = 0.72
MEM1 = 0.55
#home
MEM2 = 0.8
#away
MIL1 = 0.11
#home
MIL2 = 0.37
#away
HOU = 0.32
WAS = 0.7
CHA = 0.7
#home
ATL = 0.89
NYK2 = 0.92
#away
MIA = 0.3
ORL = 0.6

TorontoProbs <- c(GSW1, SAC, UTA, DET, GSW2, PHI, DEN,LAL, NYK1,MEM1,MEM2,MIL1,MIL2,HOU,WAS,CHA,ATL,NYK2,MIA,ORL)
torontogameresults <- rbinom(length(TorontoProbs),1,TorontoProbs)
toronto <- toronto + sum(torontogameresults) + abs(clash-1)

#calculting toronto division winning % based on current standing and the three games they play vs other teams in div
torontorecord <- c(8,4)
Torontodivclashes <- c(torontogameresults[6], torontogameresults[9], torontogameresults[18],abs(clash-1))
torontorecord[1] <- torontorecord[1] + sum(Torontodivclashes)
torontorecord[2] <- torontorecord[2] + (4-sum(Torontodivclashes))
torontowinperc <- torontorecord[1]/sum(torontorecord)





b[i] = boston
t[i] = toronto
torp[i] <- torontowinperc
bosp[i] <- bostonwinperc
i = i + 1
}













