import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        title: Text("UseDev"),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.person_outline_outlined,
            size: 24,
            semanticLabel: "Usuário",
          ),
          Icon(
            Icons.add_shopping_cart_outlined,
            size: 24,
            semanticLabel: "Carrinho",
          ),
        ]
      ),
    );
  }
}