// Replace Mutt's `dprint()` with NeoMutt's `mutt_debug()`
// This requires removing a parameter and a set of parentheses.

@@
expression E;
@@

- dprint
+ mutt_debug_WIP
  (
  E,
- (
  ...
- )
  )

@@
identifier I1, I2;
@@

- mutt_debug_WIP
+ mutt_debug
  (
  I1,
- I2,
  ...
  );

