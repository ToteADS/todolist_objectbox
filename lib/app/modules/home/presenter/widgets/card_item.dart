import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/home/domain/entities/pessoa.dart';
import 'package:todolist/app/modules/home/domain/usecases/pessoa_delete_uc.dart';

class CardItem extends StatelessWidget {
  CardItem({Key? key, required this.pessoa}) : super(key: key);

  final IPessoaDeleteUc deleteUc = Modular.get();
  final Pessoa pessoa;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(pessoa.nome ?? ""),
      subtitle: Column(children: [
        pessoa.apelido != null
            ? Row(
                children: [
                  const Text("Apelido : "),
                  Text(pessoa.apelido ?? ""),
                ],
              )
            : Container(),
        pessoa.idade != 0
            ? Row(
                children: [
                  const Text("Idade : "),
                  Text(pessoa.idade.toString()),
                ],
              )
            : Container(),
        pessoa.emails.target != null && (pessoa.emails.target?.email?.isNotEmpty ?? false)
            ? Row(
                children: [
                  const Text("Email : "),
                  Text(pessoa.emails.target?.email ?? ""),
                ],
              )
            : Container(),
        pessoa.telefone.target != null && (pessoa.telefone.target?.numero?.isNotEmpty ?? false)
            ? Row(
                children: [
                  const Text("Telefone : "),
                  Text(pessoa.telefone.target?.numero ?? ""),
                ],
              )
            : Container(),
      ]),
      trailing: IconButton(
          onPressed: () {
            deleteUc.delete(pessoa);
          },
          icon: const Icon(
            Icons.delete_forever,
            color: Colors.red,
          )),
    ));
  }
}
