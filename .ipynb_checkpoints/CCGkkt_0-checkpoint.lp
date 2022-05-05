\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  - 22 x[0,0] - 33 x[0,1] - 24 x[0,2] - 33 x[1,0] - 23 x[1,1] - 30 x[1,2]
   - 20 x[2,0] - 25 x[2,1] - 27 x[2,2]
Subject To
 SPcolumn3[0,0]: lambda[0] - pi[0] <= 22
 SPcolumn3[0,1]: lambda[1] - pi[0] <= 33
 SPcolumn3[0,2]: lambda[2] - pi[0] <= 24
 SPcolumn3[1,0]: lambda[0] - pi[1] <= 33
 SPcolumn3[1,1]: lambda[1] - pi[1] <= 23
 SPcolumn3[1,2]: lambda[2] - pi[1] <= 30
 SPcolumn3[2,0]: lambda[0] - pi[2] <= 20
 SPcolumn3[2,1]: lambda[1] - pi[2] <= 25
 SPcolumn3[2,2]: lambda[2] - pi[2] <= 27
 SPcolumn4[2,2]: - x[2,2] >= 0
 SPcolumn5[0,0]: 55 alpha[0,0] - lambda[0] + pi[0] <= 33
 SPcolumn5[0,1]: 66 alpha[0,1] - lambda[1] + pi[0] <= 33
 SPcolumn5[0,2]: 57 alpha[0,2] - lambda[2] + pi[0] <= 33
 SPcolumn5[1,0]: 66 alpha[1,0] - lambda[0] + pi[1] <= 33
 SPcolumn5[1,1]: 56 alpha[1,1] - lambda[1] + pi[1] <= 33
 SPcolumn5[1,2]: 63 alpha[1,2] - lambda[2] + pi[1] <= 33
 SPcolumn5[2,0]: 50 alpha[2,0] - lambda[0] + pi[2] <= 30
 SPcolumn5[2,1]: 55 alpha[2,1] - lambda[1] + pi[2] <= 30
 SPcolumn5[2,2]: 57 alpha[2,2] - lambda[2] + pi[2] <= 30
 SPcolumn6[0]: - 33 beta[0] + lambda[0] <= 0
 SPcolumn6[1]: - 33 beta[1] + lambda[1] <= 0
 SPcolumn6[2]: - 27 beta[2] + lambda[2] <= 0
 SPcolumn8[0]: - 33 gamma[0] + pi[0] <= 0
 SPcolumn8[1]: - 33 gamma[1] + pi[1] <= 0
 SPcolumn8[2]: - 30 gamma[2] + pi[2] <= 0
 SP10: g[0] + g[1] <= 1.2
 SP11: g[0] + g[1] + g[2] <= 1.8
 SPcolumn1[0]: x[0,0] + x[0,1] + x[0,2] <= 252
 SPcolumn1[1]: x[1,0] + x[1,1] + x[1,2] <= 0
 SPcolumn1[2]: x[2,0] + x[2,1] + x[2,2] <= 520
 SPcolumn2[0]: x[0,0] + x[1,0] + x[2,0] >= 206
 SPcolumn2[1]: x[0,1] + x[1,1] + x[2,1] >= 314
 SPcolumn2[2]: x[0,2] + x[1,2] + x[2,2] >= 252
 SPcolumn7[0]: x[0,0] + x[1,0] + x[2,0] + 40 beta[0] <= 246
 SPcolumn7[1]: x[0,1] + x[1,1] + x[2,1] + 40 beta[1] <= 354
 SPcolumn7[2]: x[0,2] + x[1,2] + x[2,2] + 40 beta[2] <= 292
 SPcolumn9[0]: - x[0,0] - x[0,1] - x[0,2] + 252 gamma[0] <= 0
 SPcolumn9[1]: - x[1,0] - x[1,1] - x[1,2] <= 0
 SPcolumn9[2]: - x[2,0] - x[2,1] - x[2,2] + 520 gamma[2] <= 0
 SPcolumn4[0,0]: - x[0,0] + 246 alpha[0,0] >= 0
 SPcolumn4[0,1]: - x[0,1] + 252 alpha[0,1] >= 0
 SPcolumn4[0,2]: - x[0,2] + 252 alpha[0,2] >= 0
 SPcolumn4[1,0]: - x[1,0] >= 0
 SPcolumn4[1,1]: - x[1,1] >= 0
 SPcolumn4[1,2]: - x[1,2] >= 0
 SPcolumn4[2,0]: - x[2,0] + 246 alpha[2,0] >= 0
 SPcolumn4[2,1]: - x[2,1] + 314 alpha[2,1] >= 0
 SPcolumn4[2,2]: - x[2,2] + 260 alpha[2,2] >= 0
Bounds
 g[0] <= 1
 g[1] <= 1
 g[2] <= 1
Binaries
 alpha[0,0] alpha[0,1] alpha[0,2] alpha[1,0] alpha[1,1] alpha[1,2]
 alpha[2,0] alpha[2,1] alpha[2,2] beta[0] beta[1] beta[2] gamma[0] gamma[1]
 gamma[2]
End
