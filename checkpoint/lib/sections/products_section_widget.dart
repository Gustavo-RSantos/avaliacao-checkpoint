import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../models/product_model.dart";
import "../services/product_service.dart";
import "../widgets/card_produce_widget.dart";

class ProductsSectionWidget extends StatelessWidget {
  const ProductsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductService productService = ProductService();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Promos Especiais",
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        FutureBuilder<List<ProductModel>>(
          future: productService.getProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Erro ao carregar produtos: ${snapshot.error}"),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text("Nenhum produto encontrado."),
              );
            }

            final products = snapshot.data!;

            return ListView.builder(
              itemCount: products.length > 8 ? 8 : products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, index) {
                final product = products[index];

                return CardProduce(
                  nome: product.title,
                  url: product.image,
                  valor: "R\$ ${product.price.toStringAsFixed(2).replaceAll('.', ',')}",
                );
              },
            );
          },
        ),
        const SizedBox(height: 25),
        TextButton(
          onPressed: () {},
          child: Text(
            "Ver mais",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF780BF7),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
