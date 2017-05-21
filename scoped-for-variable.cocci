// Quite often, the loop variable in a 'for' loop isn't used elsewhere.
// C99 allows us to reduce the scope to *just* the 'for' loop.

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

