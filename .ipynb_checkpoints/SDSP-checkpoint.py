from MP import *

# Constant creation
f = [400, 414, 326]
a = [18, 25, 20]
C = [[22, 33, 24],
     [33, 23, 30],
     [20, 25, 27], ]
D = [206 + 40, 274 + 40, 220 + 40]
dl = [206, 274, 220]
du = [40, 40, 40]

d = [dl[i] + du[i] * g[i].x for i in range(3)]
# zupd = []
# zupd.append([z[i].x for i in range(3)])
SPSD = Model("SPSD")
# Construction of Sub-problem (strong duality)
# addVars
λ = SPSD.addVars(3, lb=0, name='labm')
w = SPSD.addVars(3, lb=0, name='w')
π = SPSD.addVars(3, lb=0, name='pi')
g = SPSD.addVars(3, lb=0, ub=1.0, vtype=GRB.CONTINUOUS, name='g')
M = 1e5
# addConstrs
SD1 = SPSD.addConstrs(((λ[j] - π[i]) <= C[i][j] for i in range(3) for j in range(3)), name='SDSP1')
SD2 = SPSD.addConstr(quicksum(g[i] for i in range(2)) <= 1.2, name='SDSP2')
SD3 = SPSD.addConstr(quicksum(g[i] for i in range(3)) <= 1.8, name='SDSP3')
SD4 = SPSD.addConstrs((w[j] <= λ[j] for j in range(3)), name='SDSP4') #SDSP4~6: product-linearization
SD5 = SPSD.addConstrs((w[j] <= g[j] * M for j in range(3)), name='SDSP5')
SD6 = SPSD.addConstrs((w[j] >= (λ[j] - (1 - g[j]) * M) for j in range(3)), name='SDSP6')
obj = quicksum(dl[i] * λ[i] + du[i] * w[i] - z[i].x * π[i] for i in range(3))

SPSD.setObjective(obj, GRB.MAXIMIZE)  # set Objective is max
SPSD.write("SDSP.lp")
SPSD.optimize()  # Solve Model
UB = LB - η.x + SPSD.objval
print('UB: '+str(UB))