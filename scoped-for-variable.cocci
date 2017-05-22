// Quite often, the loop variable in a 'for' loop isn't used elsewhere.
// C99 allows us to reduce the scope to *just* the 'for' loop.

@@
type T;
identifier I;
statement S;
expression E1, E2, E3;
@@

- T I;
  ... when != I
- for (I = E1; E2; E3)
+ for (T I = E1; E2; E3)
    S
  ... when != I

