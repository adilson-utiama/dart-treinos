
void sobreOperadores() {

  //Aritmeticos
  var n1 = 10;
  var n2 = 20;
  var soma = n1 + n2;
  print(soma);

  //Logicos
  // Comparadores
  // ----------------------
  // >		maior
  // >=		maior ou igual
  // <		menor
  // <=		menor ou igual
  // ==		igual
  // !=		diferente*/
  // ?express  inverte a expressao boleana
  // ||   OR
  // &&   AND
  bool testeAnd = (true && false);
  bool complexa = !(10 > 20) && ((30 < 20) || testeAnd);
  print(complexa); //false

  //Type test operadores
  //as - TYPECAST
  //is -> TRUE se o objeto for do tipo especifico
  //is! -> FALSE - negacao do 'is'
  String num = "10";
  print(num is String); //TRUE
  print(num is! String); //FALSE

  //Assignment operator
  // ??=
  var a = "valor a";
  var b;
  //Atribui valor para 'b' se ele for NULL, caso contrario continua com o mesmmo valor
  b ??= a;
  print(b); //valor a
  var c = "valor c";
  c ??= a;
  print(c); //valor c


  //Expressoes Condicionais
  // CONDICAO ? EXPR1 : EXPR2
  var visibilidade = true;
  var visivel = visibilidade ? "Publico" : "Privado";
  print(visivel);

  // EXXPR1 ?? EXPR2
  //Para testes para verificar NULL
  var isNull;
  String estaNull = isNull ?? "Valor esta NULL";
  print(estaNull);


  //Cascade Notation
  //Permite fazer sequencia de operacoes no mesmo objeto
  //querySelector('#confirm') // Pega o Objeto
  //  ..text = "Confirm"
  //  ..classes.add("important")
  //  ..onClick.listen((e) => window.alert("Confirmed"));

  //Equivalente
  //var button = querySelector("#confirm");
  //button.text = "Confirm";
  //button.classes.add("important");
  //button.onCLick.listen((e) => window.alert("Confirmed"));


}