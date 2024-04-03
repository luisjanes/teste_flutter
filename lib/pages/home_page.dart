import 'package:flutter/material.dart';
import 'package:teste_flutter/pages/home_controller.dart';
import 'package:teste_flutter/pages/time_page.dart';

import '../models/time.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();

  @override
  void initState(){
    super.initState();
    controller = HomeController();
  }

  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
            child: Text('Brasileirão'),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(itemBuilder: (BuildContext context, int time){
        final List<Time>tabela = controller.tabela;
        return ListTile(
          leading: Image.network(tabela[time].brasao),
          title: Text(tabela[time].name),
          trailing: Text(tabela[time].pontos.toString()),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (_)=>TimePage(
                  key: Key(tabela[time].name),
                  time: tabela[time],
                )
            ));
          },
        );
      },
      separatorBuilder: (_,__)=>Divider(),
      padding: EdgeInsets.all(16),
      itemCount: controller.tabela.length),
      );
  }
}
