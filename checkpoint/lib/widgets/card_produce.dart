import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CardProduce extends StatelessWidget {

  const CardProduce({
    required this.nome,
    required this.url,
    required this.valor,

    super.key
  });

  final String nome;
  final String url;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .all(20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Image.network(
            url,
            height: 200,
            width: double.infinity,
            fit: .cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              nome,
              style: GoogleFonts.orbitron(
                fontSize: 25,
                fontWeight: .bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              valor,
              style: GoogleFonts.poppins(
                fontSize: 31,
              ),
            ),
          ),
        ],
      ),
    );
  }
}