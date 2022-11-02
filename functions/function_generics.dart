main(){
  var a = [3,5,6,7,8,9];

  //se eu tentar passar uma lista de string daria erro copilacao
  int returnSecondElement = secondElement<int>(a);
  print(returnSecondElement);

  var b = ["banana","pera","maca"];
  String returnSecondElement2 = secondElement<String>(b);
  print(returnSecondElement2);

}


E secondElement<E>(List<E> list) {
  return  list[1];
}