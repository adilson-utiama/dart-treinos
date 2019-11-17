
void sobreEstruturasControle() {

  //IF-ELSE
  var nota = 5;
  if(nota == 5) {
    print("Nota Media");
  } else if(nota < 5) {
    print("Nota Baixa");
  } else if(nota > 5) {
    print("Nota Alta");
  } else {
    print("Nota Inexistente");
  }

  //SWITCH
  String linguagem = "Dart";
  switch(linguagem){
    case "Java":
      print("Java :(");
      break;
    case "Swift":
      print("Swift :(");
      break;
    case "Dart":
      print("Dart!!!");
      break;
    default:
      print("Outra...");
  }

  //LOOPS

  //FOR
  //Pode ser usado break e continue
  var msg = StringBuffer("Dart and Flutter");
  for(var i = 0; i < 5; i++) {
    msg.write("!");
  }
  print(msg);

  //ForEach -> Para Objetos iteraveis
  var numeros = [1,2,3];
  numeros.forEach( (numero) => print(numero) );

  //ForIn -> Para Objetos iteraveis
  for(var numero in numeros) {
    print(numero);
  }



  //WHILE e DO-WHILE
  //Pode ser usado break e continue
  int j = 0;
  while(j < 10){
    print("While: $j");
    j++;
  }

  int k = 0;
  do {
    print("Do: $k");
    k++;
  } while (k < 10);



  //ASSERT
  //assert(condicao, mensagemopcional)

  var text;
  //assert((text != null), "Texto nulo"); //Failed assertion: line 73 pos 10: '(text != null)': Texto nulo

}