\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  400 y[0] + 414 y[1] + 326 y[2] + 18 z[0] + 25 z[1] + 20 z[2]
Subject To
 fixCap[0]: - 800 y[0] + z[0] <= 0
 fixCap[1]: - 800 y[1] + z[1] <= 0
 fixCap[2]: - 800 y[2] + z[2] <= 0
 zCap: z[0] + z[1] + z[2] >= 700
 zCap[0]: x[0,0] + x[0,1] + x[0,2] - z[0] <= 0
 zCap[1]: x[1,0] + x[1,1] + x[1,2] - z[1] <= 0
 zCap[2]: x[2,0] + x[2,1] + x[2,2] - z[2] <= 0
 demand[0]: x[0,0] + x[1,0] + x[2,0] >= 206
 demand[1]: x[0,1] + x[1,1] + x[2,1] >= 274
 demand[2]: x[0,2] + x[1,2] + x[2,2] >= 220
Bounds
 y[0] <= 1
 y[1] <= 1
 y[2] <= 1
Generals
 y[0] y[1] y[2]
End
