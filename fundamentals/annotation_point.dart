main () {
   //posso encadear varias anotacoes de propriedades identico ao javascript e swift
  var s1 = "Ricardo kenji"
      .substring(0,8) // vai pegar do indice 0 ate 7 ou seja Ricardo
      .toUpperCase() // maisculo
      .padRight(2,"!"); //ira a direita acresentar  2 !

  print(s1); // RICARDO

}