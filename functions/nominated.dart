main () {

  whatDate(year: 2010);

  sum(first: 10,second: 20);

}

//posso atraves dos {} criar parametros nomeados
void whatDate({int year = 2020,int month = 10,int day = 3 }) {
  print("$day/$month/$year");
}

//se nao possuir required posso usar ?
//porem precisarei gaarnti que nao e nullo
int sum({required int first,required int second})  {
   return first + second;
}