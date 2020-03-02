##between boston and toronto


i = 1
b = numeric()
t = numeric()

while (i <= 1000) {
  

toronto <- 42
boston <- 41


##games to be played for boston
#home
BKN1 = 0.8
#away
CLE = 0.82
#home
UTA = 0.71
OKC = 0.73
#away
IND = 0.5
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
MIA = 0.7
ORL1 = .82
MIL2 = 0.38
IND = 0.77
#away
ORL2 = 0.63
MIA = 0.32
DET = 0.82
#away
CHI2 = 0.77

bostonprobs <- c(BKN1, CLE, UTA, OKC, IND, MIL1, WAS1, CHI1,NYK, BKN2,WAS2,MEM, POR, MIN, MIA, ORL1, MIL2,IND,ORL2,MIA,DET,CHI2)
boston <- boston + sum(rbinom(length(bostonprobs),1,bostonprobs))


    
##games to be played for toronto
#away
PHO = 0.74
GSW1 = 0.82
SAC = 0.66
UTA = 0.4
#home
DET = 0.95
GSW2 = 0.94
#away
PHI = 0.35
#home
# BOS = 
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

TorontoProbs <- c(PHO, GSW1, SAC, UTA, DET, GSW2, PHI, DEN,LAL, NYK1,MEM1,MEM2,MIL1,MIL2,HOU,WAS,CHA,ATL,NYK2,MIA,ORL)
toronto <- toronto + sum(rbinom(length(TorontoProbs),1,TorontoProbs))

clash <- rbinom(1,1, TOR)
toronto <- toronto + clash
boston <- boston + abs(clash - 1)

b[i] = boston
t[i] = toronto
i = i + 1
}



