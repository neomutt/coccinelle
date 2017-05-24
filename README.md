# Coccinelle Scripts

## What's Coccinelle?

It's a tool for manipulating C source code.  Sure, you can search & replace
using your favourite editor, sed or awk, but Coccinelle really understands C.

For example, if `x` is an integer, replace `if (!x)` with `if (x == 0)`

## Scripts

These script are works-in-progress.  Use with caution.
They may, or may not, get used in the NeoMutt project.

| Coccinelle Script                                | Test C                          | Description                                             |
| :----------------------------------------------- | :------------------------------ | :------------------------------------------------------ |
| [dprint](dprint.cocci)                           | [source](dprint.c)              | Replace `dprint()` with mutt_debug()`                   |
| [if-assignment](if-assignment.cocci)             | [source](if-assignment.c)       | Split up `if` statements containing an assignment       |
| [not-pointer](not-pointer.cocci)                 | [source](not-pointer.c)         | Only allow `if (x)` for bools and pointers              |
| [not-swap](not-swap.cocci)                       | [source](not-swap.c)            | Swap `if (!x)` clauses                                  |
| [null-check](null-check.cocci)                   | [source](null-check.c)          | Replace `if (x == NULL)` with `if (x)`                  |
| [prototypes](prototypes.cocci)                   | [source](prototypes.c)          | Highlight missing argument names in function prototypes |
| [rename-function](rename-function.cocci)         |                                 | Rename a function, reordering the arguments             |
| [scoped-for-variable](scoped-for-variable.cocci) | [source](scoped-for-variable.c) | Reduce the scope of a `for` loop variable               |
| [set-pointer-null](set-pointer-null.cocci)       |                                 | Set all pointers to NULL when declared                  |

## Where Can I Find Coccinelle?

- Home: http://coccinelle.lip6.fr/
- Scripts: http://coccinellery.org/
- Source: https://github.com/coccinelle/coccinelle
- Grep-like tool: https://github.com/regit/coccigrep

