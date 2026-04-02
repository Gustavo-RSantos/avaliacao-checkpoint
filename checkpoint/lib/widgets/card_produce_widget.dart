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
          Image.asset(
            url,
            height: 300,
            width: double.infinity,
            fit: .cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              nome,
              style: GoogleFonts.orbitron(
                fontSize: 27,
                fontWeight: .bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              valor,
              style: GoogleFonts.poppins(
                fontSize: 31,
                fontWeight: .w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}