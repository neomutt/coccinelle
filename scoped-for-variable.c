/* The scope of 'for' variable 'i' could be smaller */

int main()
{
  int i;

  h = 42;
  j = 99;

  for (i = 0; i < 10; i++)
  {
    h = i;
    wibble(i, j);
  }

  j = h;
}
