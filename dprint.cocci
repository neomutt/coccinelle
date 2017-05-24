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
expression E;
identifier I;
@@

- mutt_debug_WIP
+ mutt_debug
  (
  E,
- I,
  ...
  );

