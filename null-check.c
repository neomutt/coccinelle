
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
