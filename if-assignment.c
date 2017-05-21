int main()
{
  if ((mike1 = fn1(x)) == NULL)
    something1();

  if ((mike2 = fn2(x)) != NULL)
    something2();

  if ((mike3 = fn3(x)) < NULL)
    something3();

  if ((mike4 = fn4(x)) <= NULL)
    something4();

  if ((mike5 = fn5(x)) > NULL)
    something5();

  if ((mike6 = fn6(x)) >= NULL)
    something6();

  if (x == 42)
    something1();
  else if ((mike1 = fn1(x)) == NULL)
    other1();

  if (x == 42)
    something2();
  else if ((mike2 = fn2(x)) != NULL)
    other2();

  if (x == 42)
    something3();
  else if ((mike3 = fn3(x)) < NULL)
    other3();

  if (x == 42)
    something4();
  else if ((mike4 = fn4(x)) <= NULL)
    other4();

  if (x == 42)
    something5();
  else if ((mike5 = fn5(x)) > NULL)
    other5();

  if (x == 42)
    something6();
  else if ((mike6 = fn6(x)) >= NULL)
    other6();

}
