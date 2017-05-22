/* The scope of the 'for' loop variables could be smaller */

int main()
{
  int h, i, j;

  h = 42;

  char *a, *b;

  for (i = 0; i < 10; i++)
  {
    fn(i);
  }

  for (j = 0; j < 10; j++)
  {
    fn(j);
  }

  h = 99;
}
