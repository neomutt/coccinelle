// Initialise all pointers to NULL.

@@
identifier fn;
type T;
identifier I1;
@@

fn(...)
{
<...
-T *I1;
+T *I1 = NULL;
...>
}

