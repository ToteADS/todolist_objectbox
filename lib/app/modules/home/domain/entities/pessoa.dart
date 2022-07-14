import 'package:objectbox/objectbox.dart';
import 'package:todolist/app/modules/home/domain/entities/email.dart';

import 'telefone.dart';

@Entity()
class Pessoa {
  @Id(assignable: false)
  int id = 0;
  String? nome;
  String? apelido;
  int? idade;
  final telefone = ToOne<Telefone>();
  final emails = ToOne<Email>();
 
}
