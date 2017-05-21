// When an 'if' statement has an 'else' clause, but the test if negative it's
// confusing to the reader.  Swapping the clauses makes the 'if' clearer.

@@
type T;
T *I;
statement S1, S2;
@@

- if (!I) S1 else S2
+ if (I) S2 else S1

