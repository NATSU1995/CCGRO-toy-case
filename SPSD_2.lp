\ Model SPSD
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  206 lambda[0] + 274 lambda[1] + 220 lambda[2] + 40 w[0] + 40 w[1]
   + 40 w[2] - 332 pi[0] - 368 pi[2]
Subject To
 dualConstr[0,0]: lambda[0] - pi[0] <= 22
 dualConstr[0,1]: lambda[1] - pi[0] <= 33
 dualConstr[0,2]: lambda[2] - pi[0] <= 24
 dualConstr[1,0]: lambda[0] - pi[1] <= 33
 dualConstr[1,1]: lambda[1] - pi[1] <= 23
 dualConstr[1,2]: lambda[2] - pi[1] <= 30
 dualConstr[2,0]: lambda[0] - pi[2] <= 20
 dualConstr[2,1]: lambda[1] - pi[2] <= 25
 dualConstr[2,2]: lambda[2] - pi[2] <= 27
 uncertSet1: g[0] + g[1] <= 1.2
 uncertSet2: g[0] + g[1] + g[2] <= 1.8
 uncertSetLinear1[0]: - lambda[0] + w[0] <= 0
 uncertSetLinear1[1]: - lambda[1] + w[1] <= 0
 uncertSetLinear1[2]: - lambda[2] + w[2] <= 0
 uncertSetLinear2[0]: w[0] - 33 g[0] <= 0
 uncertSetLinear2[1]: w[1] - 33 g[1] <= 0
 uncertSetLinear2[2]: w[2] - 27 g[2] <= 0
 uncertSetLinear3[0]: - lambda[0] + w[0] - 33 g[0] >= -33
 uncertSetLinear3[1]: - lambda[1] + w[1] - 33 g[1] >= -33
 uncertSetLinear3[2]: - lambda[2] + w[2] - 27 g[2] >= -27
Bounds
 g[0] = 0
 g[1] = 0
 g[2] = 0
End
