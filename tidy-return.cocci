// Simplify return statements

@@
identifier I;
constant C;
@@

(
- return (C);
+ return C;
|
- return (I);
+ return I;
)

