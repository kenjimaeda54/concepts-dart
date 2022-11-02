void main () {
  //List aceita varoles heterogenoes
  var array = ["Banana","pera","maca",333];
  print(array is List);
  print(array.length);
  print(array.elementAt(3));
  print("");

  //Map -> chave e valor
  var map = {
      "Ricardo": 26,
      "Erika": 13,
     "Ricardo": 29,
  };
  print(map is Map);
  //por haver dois Ricardo vai retornar o ultimo
  print(map["Erika"]);
  print(map.keys); //ricardo e erika
  print(map.values); // 29 e 13
  print("");

  //Set -> set e similar ao array,porem nao aceita valores repetidos
  //set nao e indexado entao nao consigo acessar por index como array[]

  var set = {"pera","banana",3};
  print(set is Set);
  print(set.length);
  print(set.first);

}
