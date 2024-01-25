Number of literals: 23
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Have identified that bigger values of (free_spot shelf1) are preferable
Have identified that bigger values of (free_spot shelf2) are preferable
Have identified that bigger values of (free_spot shelf3) are preferable
Have identified that bigger values of (free_spot home) are preferable
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
Pruning (drop robot1 package1 home) - never appeared in initial RPG
Pruning (drop robot1 package2 home) - never appeared in initial RPG
Pruning (drop robot1 package3 home) - never appeared in initial RPG
75% of the ground temporal actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 60.000)b (8.000 | 60.002)b (7.000 | 60.003)b (6.000 | 60.004)b (5.000 | 60.006)b (4.000 | 60.007)b (3.000 | 60.008)b (2.000 | 60.009)b (1.000 | 60.010);;;; Solution Found
; States evaluated: 20
; Cost: 60.010
; Time 0.01
0.000: (pick_up robot1 package1 home)  [60.000]
0.001: (move robot1 home shelf1)  [60.000]
0.002: (drop robot1 package1 shelf1)  [60.000]
0.003: (move robot1 shelf1 home)  [60.000]
0.004: (pick_up robot1 package2 home)  [60.000]
0.005: (move robot1 home shelf2)  [60.000]
0.006: (drop robot1 package2 shelf2)  [60.000]
0.007: (move robot1 shelf2 home)  [60.000]
0.008: (pick_up robot1 package3 home)  [60.000]
0.009: (move robot1 home shelf3)  [60.000]
0.010: (drop robot1 package3 shelf3)  [60.000]
