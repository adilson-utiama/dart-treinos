
void sobreExceptions() {

  //Lancar uma excecao
  // throw
  // throw FormatException('Format Exception Lancado....');

  //Try - catch - finally
  try {
    print("Tentar executar codigo....");
  } on FormatException {
    print("Capturando uma Excpetion especifica");
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Excecao desconhecida: $e');
  } catch (e) {
    // No specified type, handles all
    print('Excecao realmente desconhecido: $e');
  } finally {
    print("Algo de muito errado aconteceu....");
  }
}