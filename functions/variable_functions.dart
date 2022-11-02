main() {
  int Function (int,int) sum1 = sum;
  int Function (int,int) sum2 = (a,b) {
     return a + b;
  };
  print(sum1(2,3));
  print(sum2(3,5));

  var sum3 = (int a,int b)  {
     return a + b;
  };

  print(sum3(4,5));

  var multi = (int a, int b) => a * b;

  print(multi(3,5));

}

int sum(a,b) {
  return a + b;
}
