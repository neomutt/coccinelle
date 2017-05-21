@ok@
type T1;
identifier fn;
position p;
@@

T1@p fn(void);

@@
type T1;
type T2;
identifier fn;
parameter list P;
position p != ok.p;
@@

(
- T1@p fn(T2, P);
+ T1 fn(T2 FIXME, P);
|
- T1@p fn(P, T2);
+ T1 fn(P, T2 FIXME);
)

@@
type T1;
type T2;
identifier fn;
parameter list P1;
@@

T1 fn(P1,
- T2,
+ T2 FIXME,
...);

@@
type T1;
identifier fn;
@@

- T1 fn();
+ T1 fn(void);

