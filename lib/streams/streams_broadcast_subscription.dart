import 'dart:async';

void main(){

  //Broadcast streams
  //Pode adicionar quantos listeners forem necessario

  StreamController<String> controller = StreamController<String>.broadcast();

  StreamSubscription<String> subscription1 = controller.stream.listen(printSomething);
  //Pausando subscription1
  subscription1.pause();

  StreamSubscription<String> subscription2 = controller.stream.listen(printSomething);
  StreamSubscription<String> subscription3 = controller.stream.listen(printSomething);
  StreamSubscription<String> subscription4 = controller.stream.listen(printSomething);
  StreamSubscription<String> subscription5 = controller.stream.listen(printSomething);

  controller.sink.add("Evento adicionado...");

  Future.delayed(Duration(seconds: 3)).then((_){
    print("Retornando subscription1.... apos 3 segundos");
    subscription1.resume();
  });


  /* Todos os inscritos receberam o evento
  SAIDA:
  Evento adicionado...
  Evento adicionado...
  Evento adicionado...
  Evento adicionado...
  Retornando subscription1.... apos 3 segundos
  Evento adicionado...
   */

}

void printSomething(String data){
  print(data);
}