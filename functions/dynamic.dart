
main() {
  //quando voce nao especifica o tipo dos paremtros
  // dart vai assumir como dynamic e isto pode levar a errors
  isSum(2,3); //aqui ira somar o tipo e dynamic

  //aqui ira gerar um erro apos copila,mas em tempo de copilacao nao era acusar,devido o tipo ser dinamic
  //por isso por boa pratica e necessario sempre declar o tipo dos parametros
  isSum("Ola", 3);

}

String isSum(a,b) {
  return a + b;
}
