## Conceitos de Dart
Principais conceitos de Dart

## Motivação
Construí um repo para servir de consulta no momento de pesquisar conceitos relacionados ao dart

## Feature
- Dart aceita os dados primitivos comuns em qualquer linguagem Strings,int, double, List, Set, Map
- List em Dart aceita valores heterogêneos a contrário que ocorre em Swift e Javascript
- Dart existe um tipo especial que e conhecido  dynamic.
- Basicamente o tipo dinamic variável assume vários comportamentos
- Normalmente acontece com linguaguens fracametne tipada como javascript

```dart

void main () {
  var array = ["Banana","pera","maca",333];
  print(array is List);
  print(array.length);
  print(array.elementAt(3));
  print("");

  var map = {
      "Ricardo": 26,
      "Erika": 13,
     "Ricardo": 29,
  };
  print(map is Map);
  print(map["Erika"]);
  print(map.keys); //ricardo e erika
  print(map.values); // 29 e 13
  print("");


  var set = {"pera","banana",3};
  print(set is Set);
  print(set.length);
  print(set.first);
  
  //dynamic 
  dynamic n6 = 3;
  n6 = "Texto";
  n6 = 4.5;
  print(n6);

}
```
##
- Constant em flutter aparecem em dois momentos com uso de const e final
- Const e aplicado quando definimos  tipo e o valor para variável no momento de copilação
- Final  pode ser atribuída o valor de forma tardia, como ocorre em muitas, linguagem, mas após receber não poderá ser alterada
- Abaixo o exemplo entre os dois


```dart
 
 //com const sabemos o tipo e o valor
 const PI = 3.14;

 //valor atriuido para variavel e tardia pois e so apos usuario digitar
 //porem e imutavel,depois de saber o valor nao podera ser alterado
 stdout.write("Coloque o valor do raio: ");
 final ray = stdin.readLineSync()!;
 final doubleRay = double.parse(ray);
 final calc = PI * doubleRay * doubleRay;
 print(calc);

```

## Funções 
- Casso não passe valores aos parâmetros de uma função ele ira determinar como tipo dinamy
- Isto e um risco, pois pode quebrar aplicação, caso espere um string, mas veio um int
- Sempre recomendado declarar os tipos dos parâmetros


```dart
main() {
  isSum(2,3); //aqui ira somar o tipo e dynamic

  //aqui ira gerar um erro apos copila,mas em tempo de copilacao nao era acusar,porque o tipo e dinamyc
  isSum("Ola", 3);

}

String isSum(a,b) {
  return a + b;
}

```

- Posso retornar funcoes dentro de funcoes como em linguagem Swift e Javascript,usando clousure



```dart
main() {


  //closure
  whatIyourName("Ricardo", (name) {
     print(name);
  });
  
  //exemplo dois 
  fnOdd () => print("This is pair");
  fnPair () => print("This is ood");
  
  isParOdd(fnOdd,fnPair);
  
   var number1 = sum(10);
  print(number1(3)); // 23 => 10 + 10 + 3
  print(number1(5)); //25 => 10 + 10 + 5


}

void  whatIyourName(String name, void completion(String name)) {
   completion(name);
}

void isParOdd (Function() fnOdd,Function() fnPair) {
   var random = Random().nextInt(30);
   random % 2 == 0 ? fnOdd() : fnPair();
}

int Function(int a) sum(int b) {
  int results = b + 10;
  return (int a) {
     return results + a;
  };
}

##

- Em dart também é possível nomear parâmetro parecido com oque ocorre com Swift
- E um recurso interessante, principalmente quando possuímos uma função com muitos parâmetros
- Para usar este recurso é necessário usar a palavra required em frente, também pode determinar um valor padrão com =  e terceira opção e usar ?
- Outro recurso interessante em dart e uso de opcionais, idêntico ao Swift
- Caso seja um parâmetro opcional, posso simplesmente omiti no momento de chamar a função, ira funcionar normalmente
- Omitimos usando o [] em volta dos parâmetros

```dart
main () {

  whatDate(year: 2010);

  sum(first: 10,second: 20);
  
  int results = whatResultsIs(2);
  print(results); //4

  int resulsts2 = whatResultsIs();
  print(resulsts2); //5

}

//se nao possuir required posso usar ?
//porem precisarei gaarnti que nao e nullo
int sum({required int first,required int second})  {
   return first + second;
}

//opcionais usamos o []
int whatResultsIs([int a = 3]) {
   return(2 + a);
}
```
- Genericos e algo interessante, com ele não precisamos necessariamente determinar o tipo da função podemos criar um tipo genérico
- Assim caso respeite o protocolo poderá ser qualquer tipo

```dart
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



```

## Classe

- Caso não inicie as variáveis dentro da classe ira acusar erro idêntico que ocorre em Swift
- Para evitar isso pode usar ? como exemplo abaixo


```dart
main() {

  final dayBuy = Data();
  dayBuy.day = 10;
  dayBuy.month = 08;
  dayBuy.year = 2020;


  print("Este e o dia da compra =>  ${dayBuy.day}/${dayBuy.month}/${dayBuy.year}");

  final newDayBuy = Data();
  newDayBuy.day = 15;
  newDayBuy.month = 11;
  newDayBuy.year = 2021;

  print("Acionado metodo formatedDate ${newDayBuy.formatedDate()}");

}

//preciso de um construtor para iniciar caso acontrario preciso iniar com ?
class Data {
  int? day;
  int? year;
  int? month;

  String formatedDate() {
    return "$day/$month/$year";
  }

}
```


- Em Dart apos, construção do construtor não poderá construir  outro 
- Ou seja, ele não aceita overload de construtores padrões
- Exemplo abaixo e didático, na prática não aceita overload de construtores padrões, ou seja, não poderia ter 3 construtores
- Também como em funções posso possuir construtores com parâmetros opcionais usando os []
- Quando não inicio a variável dentro de uma classe, mas no construtor uso a palavra late

```dart
main() {

  final dayOne = Date(20, 10, 2020);
  print(dayOne.formatedDate());

}

class Date {
 late int  day;
 late int month;
 late int year;

 //maneira de iniciar um construtor
 //nao podemos ter overload de construtores como em Java
 Date(int day,int month,int year) {
   this.day = day;
   this.month = month;
   this.year = year;
 }

 //segunda maneira
 Date(this.day,this.year,this.month);

 //opcional
 Date([this.day = 10,this.month = 2,this.year = 2020]);

  String formatedDate() {
    return "$day/$month/$year";
  }


}

```

- Possuo um recurso muito interessante em Dart que são construtores nomeados
- Exemplo abaixo de como usar



```dart
main() {

  Date date = Date.withYear(year: 2023);
  print(date.formatedDate()); // vai printar 3/10/2023
}

class Date {
  late int  day;
  late int month;
  late int year;

  //flutter tem posibilidade determinar construtores nomeados
  //neste caso preciso determinar um valor padrao
  Date.withYear({this.year = 2010,this.month = 10,this.day = 03});
  Date.withDay(this.day) {
     month = 10;
     year = 2024;
  }

  String formatedDate() {
    return "$day/$month/$year";
  }

}

```

- Por ultimo posuo getter e setter
- Tambem possuo propreidades privadas usando _ 

```dart

//implementado em outro arquivo
import "getter_setter.dart";

main () {

  Car carOld = Car();
  carOld.year = 1990;

  print(carOld.year); //vai printar 2020

  Car carNew = Car();
  carNew.year = 2028;
  print(carNew.year); // vai printar 2028

}



//============
class Car  {
  //com _ se torna privado nao consigo acessar em outro arquivo
  late int _year;

  int get  year {
     return  this._year;
  }

  void  set year(int year) {
    if (year < 2000) {
       this._year = 2000;
    }else{
      this._year = year;
    }
  }

}
```







