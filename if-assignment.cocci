// 'if' statements that contain an assignment and a test are hard to read.
// This script splits them in two.
// After running this script, it would be a good idea to run null-check.cocci

@else_if@
expression E1, E2;
statement S1, S2;
position p;
@@

if (E1) S1 else if@p (E2) S2

@if_equal@
identifier I;
expression E;
statement S1, S2;
constant C;
position p != else_if.p;
@@

(
- if@p ((I = E) == C)
+ I = E; if (I == C)
S1
|
- if@p ((I = E) == C)
+ I = E; if (I == C)
S1 else S2
|
- if@p ((I = E) != C)
+ I = E; if (I != C)
S1
|
- if@p ((I = E) != C)
+ I = E; if (I != C)
S1 else S2
|
- if@p ((I = E) < C)
+ I = E; if (I < C)
S1
|
- if@p ((I = E) < C)
+ I = E; if (I < C)
S1 else S2
|
- if@p ((I = E) <= C)
+ I = E; if (I <= C)
S1
|
- if@p ((I = E) <= C)
+ I = E; if (I <= C)
S1 else S2
|
- if@p ((I = E) > C)
+ I = E; if (I > C)
S1
|
- if@p ((I = E) > C)
+ I = E; if (I > C)
S1 else S2
|
- if@p ((I = E) >= C)
+ I = E; if (I >= C)
S1
|
- if@p ((I = E) >= C)
+ I = E; if (I >= C)
S1 else S2
)

