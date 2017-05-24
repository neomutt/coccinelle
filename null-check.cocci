// When checking pointers against `NULL`, write then in a condensed format.

@nc@
type T;
identifier I;
// T *I;
statement S1, S2;
// position p != else_if.p;
// position p;
expression E;
@@

T *I;

(
- if (I == NULL)
+ if (!I)
S1
|
- if (I != NULL)
+ if (I)
S1
|
- if (I == NULL)
+ if (!I)
S1 else S2
|
- if (I != NULL)
+ if (I)
S1 else S2
|
if (E) S1 else
- if (I == NULL)
+ if (!I)
S1 else S2
|
if (E) S1 else
- if (I != NULL)
+ if (I)
S1 else S2
)

