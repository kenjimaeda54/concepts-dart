import "dart:math";

main () {

   fnOdd () => print("This is pair");
   fnPair () => print("This is ood");

   isParOdd(fnOdd,fnPair);

   whatIsValue(value: 3,fn: print,quantity: 3);
   //vai repetir o valor colocado no parametro value e repetir pela parametro quantity
  // usei uma funcao propria do dart no caso print

}

void isParOdd (Function() fnOdd,Function() fnPair) {
   var random = Random().nextInt(30);
   random % 2 == 0 ? fnOdd() : fnPair();
}

void whatIsValue ({required int value,required void fn(int a),required int quantity})  {

  while(quantity > 0) {
     fn(value);
     quantity -= 1;
  }
}