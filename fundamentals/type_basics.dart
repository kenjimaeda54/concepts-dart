void main()  {
  int n1 = 3;
  String n2 = "Ola mundo";
  bool n3 = true;
  double n4  = 5.25;

  //num e classe maior hirarquia para int e double
  num n5 = 3;
  n5 = 4.3;
  print(num);
  print(n5);

  //existe o tipo dinamy este aceita qualquer tipo
  dynamic n6 = 3;
  n6 = "Texto";
  n6 = 4.5;
  print(n6);

  //interpolacao
  //existe duas formas

  final oldUser = 3;
  print("User have  old  $oldUser anos");

  print("User have after 2 years ${oldUser + 3} old");

}