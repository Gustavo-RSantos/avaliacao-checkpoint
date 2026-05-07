import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CardProduce extends StatelessWidget {
  const CardProduce({
    required this.nome,
    required this.url,
    required this.valor,
    super.key,
  });

  final String nome;
  final String url;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          url.startsWith('http')
              ? Image.network(
                  url,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 100),
                )
              : Image.asset(
                  url,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              nome,
              style: GoogleFonts.orbitron(fontSize: 27, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              valor,
              style: GoogleFonts.poppins(fontSize: 31, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
