\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  400 y[0] + 414 y[1] + 326 y[2] + 18 z[0] + 25 z[1] + 20 z[2] + η
Subject To
 fixCap[0]: - 800 y[0] + z[0] <= 0
 fixCap[1]: - 800 y[1] + z[1] <= 0
 fixCap[2]: - 800 y[2] + z[2] <= 0
 zCap: z[0] + z[1] + z[2] >= 700
 uncertSet1: g[0] + g[1] <= 1.2
 uncertSet2: g[0] + g[1] + g[2] <= 1.8
 constrGen: - 10 z[1] - 8 z[2] - η <= -18854
Bounds
 y[0] <= 1
 y[1] <= 1
 y[2] <= 1
 g[0] = 0
 g[1] = 0
 g[2] = 0
Generals
 y[0] y[1] y[2] z[0] z[1] z[2]
End
