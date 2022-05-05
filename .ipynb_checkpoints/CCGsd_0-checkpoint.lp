\ Model SPSD
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  206 labm[0] + 274 labm[1] + 220 labm[2] + 40 w[0] + 40 w[1] + 40 w[2]
   - 252 pi[0] - 520 pi[2]
Subject To
 SDSP1[0,0]: labm[0] - pi[0] <= 22
 SDSP1[0,1]: labm[1] - pi[0] <= 33
 SDSP1[0,2]: labm[2] - pi[0] <= 24
 SDSP1[1,0]: labm[0] - pi[1] <= 33
 SDSP1[1,1]: labm[1] - pi[1] <= 23
 SDSP1[1,2]: labm[2] - pi[1] <= 30
 SDSP1[2,0]: labm[0] - pi[2] <= 20
 SDSP1[2,1]: labm[1] - pi[2] <= 25
 SDSP1[2,2]: labm[2] - pi[2] <= 27
 SDSP2: g[0] + g[1] <= 1.2
 SDSP3: g[0] + g[1] + g[2] <= 1.8
 SDSP4[0]: - labm[0] + w[0] <= 0
 SDSP4[1]: - labm[1] + w[1] <= 0
 SDSP4[2]: - labm[2] + w[2] <= 0
 SDSP5[0]: w[0] - 100000 g[0] <= 0
 SDSP5[1]: w[1] - 100000 g[1] <= 0
 SDSP5[2]: w[2] - 100000 g[2] <= 0
 SDSP6[0]: - labm[0] + w[0] - 100000 g[0] >= -100000
 SDSP6[1]: - labm[1] + w[1] - 100000 g[1] >= -100000
 SDSP6[2]: - labm[2] + w[2] - 100000 g[2] >= -100000
Bounds
 g[0] <= 1
 g[1] <= 1
 g[2] <= 1
Generals
 g[0] g[1] g[2]
End
