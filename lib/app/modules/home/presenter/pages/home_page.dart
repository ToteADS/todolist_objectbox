import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:todolist/app/modules/home/presenter/widgets/card_item.dart';

import '../store/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'ToDoList Pessoas com Objectbox'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => Modular.to.pushNamed("/add"),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.person),
                Icon(Icons.add),
              ],
            ),
          ),
        ),
        body: Observer(
          builder: (context) {
            return ListView.builder(
              itemCount: store.pessoasList.length,
              itemBuilder: (context, index) {
                return CardItem(pessoa: store.pessoasList[index]);
              },
            );
          },
        ));
  }
}
