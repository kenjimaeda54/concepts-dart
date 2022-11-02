main() {

  final a = 3;
  final b = 5;
  print(a + b);
  print(a -b );
  print(a % b); //resto

  print("");

  final isFragil = true;
  final isExpensive = true;

  print(isFragil || isExpensive);  // OR
  print(isFragil && isExpensive);  // AND
  //XOR ==> precisa apenas um ser veradeiro par retornar verdadeiro
  //caso tenha dois falso retorna falso,caso tenha dois verdadeiro retorna falso
  print(isFragil ^ isExpensive );  // XOR
  print(!isFragil); // NOT


}