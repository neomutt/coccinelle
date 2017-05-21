// When checking pointers against `NULL`, write then in a condensed format.

@@
type T;
T *I;
statement S1, S2;
@@

(
- if (I == NULL)
+ if (I)
S1
|
- if (I == NULL)
+ if (I)
S1 else S2
|
- if (I != NULL)
+ if (!I)
S1
|
- if (I != NULL)
+ if (!I)
S1 else S2
)

