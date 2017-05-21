@@
type T;
identifier i;
statement S;
expression e1, e2, e3;
@@

( 
- T i;
<+... when != i
- for (i = e1; e2; e3) S
+ for (T i = e1; e2; e3) S
...+>
)

