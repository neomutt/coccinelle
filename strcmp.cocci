// Test strcmp-like functions against 0.

@@
statement S;
@@

  if (
(
ascii_strcasecmp
|
ascii_strcmp
|
ascii_strncasecmp
|
ascii_strncmp
|
mutt_strcasecmp
|
mutt_strcmp
|
mutt_strncasecmp
|
mutt_strncmp
|
strcasecmp
|
strcmp
|
strncasecmp
|
strncmp
|
wcscasecmp
)
  (...)
+ != 0
  )
(
  S
|
  { ... }
)

@@
statement S;
@@

  if (
- !
(
ascii_strcasecmp
|
ascii_strcmp
|
ascii_strncasecmp
|
ascii_strncmp
|
mutt_strcasecmp
|
mutt_strcmp
|
mutt_strncasecmp
|
mutt_strncmp
|
strcasecmp
|
strcmp
|
strncasecmp
|
strncmp
|
wcscasecmp
)
  (...)
+ == 0
  )
(
  S
|
  { ... }
)

