main() {

  //sem parametro
  gretting();

  //com parametro
  print(sum(2,3));

  //closure
  whatIyourName("Ricardo", (name) {
     print(name);
  });

}

void  gretting() {
   print("Welcome");
}

int sum(int a, int b) {
  return a + b;
}

void  whatIyourName(String name, void completion(String name)) {
   completion(name);
}
