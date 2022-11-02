main() {

  int results = whatResultsIs(2);
  print(results); //4

  int resulsts2 = whatResultsIs();
  print(resulsts2); //5

}
//opcionais usamos o []
int whatResultsIs([int a = 3]) {
   return(2 + a);
}