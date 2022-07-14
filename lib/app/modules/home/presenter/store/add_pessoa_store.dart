import 'package:mobx/mobx.dart';

part 'add_pessoa_store.g.dart';

class AddPessoaStore = AddPessoaStoreBase with _$AddPessoaStore;

abstract class AddPessoaStoreBase with Store {
  @observable
  String nome = "";
  @action
  void nomeChange(String value) => nome = value;

  @observable
  String apelido = "";
  @action
  void apelidoChange(String value) => apelido = value;

  @observable
  int idade = 0;
  @action
  void idadeChange(int value) => idade = value;

  @observable
  String telefoneDigitado = "";

  @action
  void telefoneDigitadoChange(String value) => telefoneDigitado = value;

  @observable
  String emailDigitado = "";

  @action
  void emailChange(String email) {
    emailDigitado = email;
  }

  @action 
  void clean(){
    nome = "";
    apelido = "";
    idade = 0;
    telefoneDigitado = "";
    emailDigitado = "";
  }

  
}
