
import 'dart:async';
/*
Um Stream é uma sequência de eventos assíncronos.
É como um Iterável assíncrono -
onde, em vez de obter o próximo evento quando você o solicita,
o Stream informa que há um evento quando está pronto.
 */

//Single subscription streams
//Apenas um unico listener.

void main(){

  List<Usuario> usuarios = [
    Usuario("Manuel", true),
    Usuario("Wilson", false),
    Usuario("Rosa", true),
    Usuario("Maria", false)
  ];

  //Controlador do fluxo de dados com o tipo de dado Usuario
  /*
  Um StreamController fornece um novo fluxo e uma maneira de adicionar eventos ao fluxo a
  qualquer momento e de qualquer lugar. O fluxo tem toda a lógica necessária para lidar com ouvintes e pausar.
   Você retorna o fluxo e mantém o controlador para si mesmo.
   */
  StreamController streamController = StreamController<Usuario>();

  //Subscrição ao Stream
  StreamSubscription<Usuario> subscription = streamController.stream
      .where( //Filtra os dados
        (usuario){
          if(usuario.isAdmin){
            return true;
          }else{
            return false;
          }
        }
      ).listen( //Listener de saida dos dados
        (usuario){
          print(usuario.nome);
        }
      );

  //Entrada de dados no StreamController
  streamController.sink.add(usuarios[0]);
  streamController.sink.add(usuarios[1]);
  streamController.sink.add(usuarios[2]);
  streamController.sink.add(usuarios[3]);

  //Cancela subscricao, nao ira mais receber eventos
  //subscription.cancel();

  subscription.onDone((){
    print("Evento concluido");
  });

  streamController.sink.add(Usuario("Rodrigo", true));


  //Nao pode adicionar mais listeners
  //=> Bad state: Stream has already been listened to.
  //streamController.stream.listen((_){});


  //SAIDA
  /*
  Manuel
  Rosa
  Rodrigo
  Evento concluido
   */

  //Fecha o stream
  streamController.close();


}




class Usuario {
  String nome;
  bool isAdmin;

  Usuario(this.nome, this.isAdmin);


}