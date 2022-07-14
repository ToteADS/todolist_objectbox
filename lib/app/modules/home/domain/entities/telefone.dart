import 'package:objectbox/objectbox.dart';

@Entity()
class Telefone {
  @Id(assignable: true)
   int id = 0;
   String? numero;
  
}
