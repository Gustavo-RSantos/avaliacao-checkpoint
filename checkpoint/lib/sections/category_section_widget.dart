import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Categorias",
              style: GoogleFonts.orbitron(
                fontSize: 27,
                fontWeight: .bold,
                color: Color(0xFF0B254B),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.",
              textAlign: .center,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF5E6E89),
              ),
            ),
            const SizedBox(height: 40),
            //Lista de cards
          ],
        ),
      ),
    );
  }
}
