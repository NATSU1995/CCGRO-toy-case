\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  22 x[0,0] + 33 x[0,1] + 24 x[0,2] + 33 x[1,0] + 23 x[1,1] + 30 x[1,2]
   + 20 x[2,0] + 25 x[2,1] + 27 x[2,2]
Subject To
 zCap[0]: x[0,0] + x[0,1] + x[0,2] <= 700
 zCap[1]: x[1,0] + x[1,1] + x[1,2] <= 0
 zCap[2]: x[2,0] + x[2,1] + x[2,2] <= 0
 demand[0]: x[0,0] + x[1,0] + x[2,0] - 40 g[0] >= 206
 demand[1]: x[0,1] + x[1,1] + x[2,1] - 40 g[1] >= 274
 demand[2]: x[0,2] + x[1,2] + x[2,2] - 40 g[2] >= 220
 dualConstr[0,0]: lambda[0] - pi[0] <= 22
 dualConstr[0,1]: lambda[1] - pi[0] <= 33
 dualConstr[0,2]: lambda[2] - pi[0] <= 24
 dualConstr[1,0]: lambda[0] - pi[1] <= 33
 dualConstr[1,1]: lambda[1] - pi[1] <= 23
 dualConstr[1,2]: lambda[2] - pi[1] <= 30
 dualConstr[2,0]: lambda[0] - pi[2] <= 20
 dualConstr[2,1]: lambda[1] - pi[2] <= 25
 dualConstr[2,2]: lambda[2] - pi[2] <= 27
 linearX1[0,0]: - x[0,0] + 246 alpha[0,0] >= 0
 linearX1[0,1]: - x[0,1] + 314 alpha[0,1] >= 0
 linearX1[0,2]: - x[0,2] + 260 alpha[0,2] >= 0
 linearX1[1,0]: - x[1,0] >= 0
 linearX1[1,1]: - x[1,1] >= 0
 linearX1[1,2]: - x[1,2] >= 0
 linearX1[2,0]: - x[2,0] >= 0
 linearX1[2,1]: - x[2,1] >= 0
 linearX1[2,2]: - x[2,2] >= 0
 linearX1[0,0]: 55 alpha[0,0] - lambda[0] + pi[0] <= 33
 linearX1[0,1]: 66 alpha[0,1] - lambda[1] + pi[0] <= 33
 linearX1[0,2]: 57 alpha[0,2] - lambda[2] + pi[0] <= 33
 linearX1[1,0]: 66 alpha[1,0] - lambda[0] + pi[1] <= 33
 linearX1[1,1]: 56 alpha[1,1] - lambda[1] + pi[1] <= 33
 linearX1[1,2]: 63 alpha[1,2] - lambda[2] + pi[1] <= 33
 linearX1[2,0]: 50 alpha[2,0] - lambda[0] + pi[2] <= 30
 linearX1[2,1]: 55 alpha[2,1] - lambda[1] + pi[2] <= 30
 linearX1[2,2]: 57 alpha[2,2] - lambda[2] + pi[2] <= 30
 linearLam1[0]: - 33 beta[0] + lambda[0] <= 0
 linearLam1[1]: - 33 beta[1] + lambda[1] <= 0
 linearLam1[2]: - 27 beta[2] + lambda[2] <= 0
 linearLam2[0]: x[0,0] + x[1,0] + x[2,0] - 40 g[0] + 40 beta[0] <= 246
 linearLam2[1]: x[0,1] + x[1,1] + x[2,1] - 40 g[1] + 40 beta[1] <= 314
 linearLam2[2]: x[0,2] + x[1,2] + x[2,2] - 40 g[2] + 40 beta[2] <= 260
 linearPi1[0]: - 33 gamma[0] + pi[0] <= 0
 linearPi1[1]: - 33 gamma[1] + pi[1] <= 0
 linearPi1[2]: - 30 gamma[2] + pi[2] <= 0
 linearPi2[0]: - x[0,0] - x[0,1] - x[0,2] + 700 gamma[0] <= 0
 linearPi2[1]: - x[1,0] - x[1,1] - x[1,2] <= 0
 linearPi2[2]: - x[2,0] - x[2,1] - x[2,2] <= 0
 uncertSet1: g[0] + g[1] <= 1.2
 uncertSet2: g[0] + g[1] + g[2] <= 1.8
Bounds
 g[0] = 0
 g[1] = 0
 g[2] = 0
Binaries
 alpha[0,0] alpha[0,1] alpha[0,2] alpha[1,0] alpha[1,1] alpha[1,2]
 alpha[2,0] alpha[2,1] alpha[2,2] beta[0] beta[1] beta[2] gamma[0] gamma[1]
 gamma[2]
End
