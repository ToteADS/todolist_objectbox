import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/home/domain/entities/email.dart';
import 'package:todolist/app/modules/home/domain/entities/pessoa.dart';
import 'package:todolist/app/modules/home/domain/entities/telefone.dart';
import 'package:todolist/app/modules/home/domain/usecases/pessoa_save_uc.dart';
import 'package:todolist/app/modules/home/presenter/store/add_pessoa_store.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddPessoaPage extends StatelessWidget {
  AddPessoaPage({Key? key}) : super(key: key);
  final AddPessoaStore store = Modular.get();
  final IPessoaSaveUc saveUc = Modular.get();

  @override
  Widget build(BuildContext context) {
    var maskCelular = MaskTextInputFormatter(mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')}, type: MaskAutoCompletionType.lazy);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar'),
      ),
      floatingActionButton: Observer(
        builder: (_) {
          return store.nome.isEmpty
              ? Container()
              : FloatingActionButton(
                  onPressed: () {
                    final pessoa = Pessoa();
                    pessoa.nome = store.nome;
                    pessoa.apelido = store.apelido;
                    pessoa.idade = store.idade;
                    pessoa.telefone.target = Telefone()..numero = store.telefoneDigitado;
                    pessoa.emails.target = Email()..email = store.emailDigitado;

                    saveUc.save(pessoa);
                    store.clean();
                    Modular.to.pop();
                  },
                  child: const Icon(Icons.add),
                );
        },
      ),
      body: SingleChildScrollView(child: Observer(
        builder: (_) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) => store.nomeChange(value),
                  decoration: InputDecoration(
                    labelText: "Nome da Pessoa",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: store.nome.isEmpty ? Colors.grey : Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) => store.apelidoChange(value),
                  decoration: InputDecoration(
                    labelText: "Apelido da Pessoa",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: store.apelido.isEmpty ? Colors.grey : Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) => store.idadeChange(int.tryParse(value) ?? 0),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: "Idade da Pessoa",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: store.idade == 0 ? Colors.grey : Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) => store.telefoneDigitadoChange(value),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [maskCelular],
                  decoration: InputDecoration(
                    labelText: "Celular da Pessoa",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: store.telefoneDigitado.isEmpty ? Colors.grey : Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) => store.emailChange(value),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email da Pessoa",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: store.emailDigitado.isEmpty ? Colors.grey : Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      )),
    );
  }
}
