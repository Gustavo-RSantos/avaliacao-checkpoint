import "package:checkpoint/widgets/banner_homescreen.dart";
import "package:checkpoint/widgets/card_produce.dart";
import "package:checkpoint/widgets/subscription_section_widget.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

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
          leading: Icon(
            Icons.menu,
            size: 40,
          ),
          title: Image.asset("assets/logo-usedev.png", height: 40),
          centerTitle: true,
          actions: [
            Icon(
              Icons.person_outline_outlined,
              size: 40,
              semanticLabel: "Usuário",
            ),
            SizedBox(width:25),
            Icon(
              Icons.shopping_cart_outlined,
              size: 40,
              semanticLabel: "Carrinho",
            ),
            SizedBox(width:25),
          ]
      ),
      body: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: .stretch,
            children: [
              BannerHomescreen(),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Promos Especiais",
                  textAlign: .center,
                  style: GoogleFonts.orbitron(
                    fontSize: 28,
                    fontWeight: .bold,
                  )
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => CardProduce(
                      nome: "Produto $index",
                      url: "https://images.tcdn.com.br/img/img_prod/757977/teste_box_217_1_c0e0e4ffb489ba74ed2cd344efe086c4.jpg",
                      valor: "150,00")
              ),
              SubscriptionSectionWidget()
            ],
          ),
      )
    );
  }
}