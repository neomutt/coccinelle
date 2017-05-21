/* These pointer tests against NULL can be simplified */

int main()
{
  char *x;

  if (x == NULL)
    something();

  if (x != NULL)
    something();

  if (x == NULL)
    something();
  else
    other();

  if (x != NULL)
    something();
  else
    other();
}
