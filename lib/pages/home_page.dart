import 'package:flutter/material.dart';
import 'package:teste_flutter/pages/home_controller.dart';

class HomePage extends StatelessWidget {
  var controller = HomeController();

  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(itemBuilder: (BuildContext context, int i){
        final tabela = controller.tabela;
        return ListTile(
          leading: Image.network(tabela[i].brasao),
          title: Text(tabela[i].name),
          trailing: Text(tabela[i].pontos.toString()),
        );
      },
      separatorBuilder: (_,__)=>Divider(),
      padding: EdgeInsets.all(16),
      itemCount: controller.tabela.length),
      );
  }
}
