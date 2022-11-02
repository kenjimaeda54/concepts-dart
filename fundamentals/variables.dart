void main() {
  //podemos criar inferencia de tipo usando a palavra reservada var
  //tambem podemos declarar o tipo
   int a = 3;
   String b = "texto";
   var c = 5;
   var d = 6.3;

   print(a);
   print(b);
   print(c);
   print(d);

  //verificar o tipo
  print(a.runtimeType);
  print(b.runtimeType);
  print(d.runtimeType);


  //tambem e possivel com a palavra is
  print(a is int); //true

}
