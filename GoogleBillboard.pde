public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
String betterE = new String(e.substring(0, 1) + e.substring(2));
int prime = 0;
public void setup()
{
  //your code here
  int index = 0;
  while (prime == 0) {
    if (isPrime(Double.parseDouble(betterE.substring(index, index + 10)))) {
      prime = index;
    }
    index++;
  }
  System.out.println(betterE.substring(prime, prime + 10));
}
public void draw()
{
  //not needed for this assignment
}
public boolean isPrime(double dNum)
{
  if (dNum < 2) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum % i == 0 ) {
      return false;
    }
  }
  return true;
}
