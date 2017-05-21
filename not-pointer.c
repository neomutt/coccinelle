/* The 'if's test whether a bool, pointer or integer is 'true'. */

int main()
{
  bool b;
  char *ptr;
  int integer;

  if (b)
    something();

  if (!b)
    something();

  if (ptr)
    something();

  if (!ptr)
    something();

  if (integer)
    something();

  if (!integer)
    something();

  if (b)
    something();
  else
    other();

  if (!b)
    something();
  else
    other();

  if (ptr)
    something();
  else
    other();

  if (!ptr)
    something();
  else
    other();

  if (integer)
    something();
  else
    other();

  if (!integer)
    something();
  else
    other();

  // if (false)
  //   something();
  // else if (b)
  //   something();
  // else
  //   other();

  // if (false)
  //   something();
  // else if (!b)
  //   something();
  // else
  //   other();

  // if (false)
  //   something();
  // else if (ptr)
  //   something();
  // else
  //   other();

  // if (false)
  //   something();
  // else if (!ptr)
  //   something();
  // else
  //   other();

  // if (false)
  //   something();
  // else if (integer)
  //   something();
  // else
  //   other();

  // if (false)
  //   something();
  // else if (!integer)
  //   something();
  // else
  //   other();
}
