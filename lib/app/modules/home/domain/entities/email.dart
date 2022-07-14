import 'package:objectbox/objectbox.dart';

@Entity()
class Email {
  @Id(assignable: true)
  int id = 0;
  String? email;
  
}
