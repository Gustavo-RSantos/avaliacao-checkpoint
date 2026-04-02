import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionSectionWidget extends StatelessWidget {
  const SubscriptionSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF8FFF24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Column(
          spacing: 20,
          children: [
            Text(
              "Inscreva-se para ganhar descontos!",
              textAlign: .center,
              style: GoogleFonts.orbitron(
                fontSize: 18,
                fontWeight: .bold,
                color: Color(0xFF090129)
              ),
            ),
            Text(
              "Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!",
              textAlign: .center,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF090129),
              ),
            ),
            TextField(
              keyboardType: .emailAddress,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email!',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color(0xFF090129)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF780BF7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                child: Text(
                  'Inscrever',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
