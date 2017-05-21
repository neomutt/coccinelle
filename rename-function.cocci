// Rename a function and rearrange the args
@@
type T1, T2, T3;
identifier I1, I2, I3;
@@

(
// Fix prototype
- T3 call_bob(T1 I1, T2 I2);
+ T3 call_dave(T2 I2, T1 I1);
|
// Fix calls
I3 =
- call_bob(I1, I2);
+ call_dave(I2, I1);
|
- call_bob(I1, I2);
+ call_dave(I2, I1);
)

