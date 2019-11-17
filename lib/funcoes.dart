
void sobreFuncoes() {

  imprimeAlgo();
  printSoma(2, 5);
  print("Soma com retorno: 2 + 5 = ${soma(2, 5)}");

  dobrarValor(15);

  //Chamada de funcao com parametro nomeado
  //nomeDoParametro : valor
  subtrair(numero: 10, subtrair: 5);

  //Chamada da funcao com parametro padrao
  dividir(numero: 10); //podemos omitir o parametro 'divisao'

}

//Funcao sem retorno
void imprimeAlgo() {
  print("Imprimindo...");
}

//Funcao com parametros
void printSoma(int a, int b) {
  print("Soma: $a + $b = ${a + b}");
}

//Funcao com retorno
int soma(int a, int b) {
  return a + b;
}

//Funcao com Named parameter
//Necessario envolver os parametros com {}
void subtrair( { int numero, int subtrair } ) {
  print(numero - subtrair);
}

//Funcao com parametro Padrao
void dividir( { int numero, int divisao = 2 } ) {
  print(numero / divisao);
}

//Funcao anonima { arrow function }
//Para funções que contêm apenas uma expressão, você pode usar uma sintaxe abreviada
void dobrarValor(int numero) => print(numero * 2);