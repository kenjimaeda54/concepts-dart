import "dart:io";

void main() {

   //const e apenas em momento de copilacao
   //variaveis que serao em momento de run time nao poderiamos usar
   //para isto usamos a palavra reservada final

   //tanto final quanto constantes soa imutavies
   const PI = 3.14;

   //stdout e saida padrao, neste caso nao tem quebra de linha
   stdout.write("Coloque o valor do raio: ");
   final ray = stdin.readLineSync()!;
   final doubleRay = double.parse(ray);
   final calc = PI * doubleRay * doubleRay;
   print(calc);

   // constante tambem segue o principio de referencia na memoria ou seja
   final myList = ["banana","pedro"];
   myList.add("Joao");
   print(myList); // ["banana","pedro", "Joao"]

   //agora caso utlize a palavra const ao inves do final
   //nao sera possivel pois const e para momento de copilacao ou seja ele precisa
   //saber que tipo de dados sao
   const myList2 = ["banana","pedro"];
   myList2.add("Rebeca"); //vai gerar uma execao  Cannot add to an unmodifiable list

    //tambem posso impedir a modificao de uma lista usando o const na frente da variavel
   final myList3 = const ["banana","pedro"];
   myList3.add("rebeca"); //Cannot add to an unmodifiable list

}
