// 'if' conditions of the form `if (x)` or `if (!x)` should only be used with
// pointers and booleans.  Expand any integer tests to `x == 0`, `x != 0`

@a_bool@
typedef bool;
bool I;
position P;
@@

I@P

@a_pointer@
type T;
T *I;
position P;
@@

I@P

@@
identifier I;
statement S1, S2, S3;
position P != {a_pointer.P,a_bool.P};
@@

(
- if (!I@P) S1 else S2
+ if (I != 0) S1 else S2
|
- if (I@P) S1 else S2
+ if (I == 0) S1 else S2
|
- if (I@P) S1
+ if (I != 0) S1
|
- if (!I@P) S1
+ if (I == 0) S1
|
-if (E) S1 else if (I@P) S2 else S3
+if (E) S1 else if (I != 0) S2 else S3
)

