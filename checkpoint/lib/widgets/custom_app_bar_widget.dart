import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool canPop = Navigator.of(context).canPop();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: AppBar(
        leading: canPop
            ? IconButton(
                icon: const Icon(Icons.arrow_back, size: 40),
                onPressed: () => Navigator.of(context).pop(),
              )
            : const Icon(Icons.menu, size: 40),
        title: Image.asset("assets/logo-usedev.png", height: 50),
        centerTitle: true,
        actions: const [
          Icon(Icons.person_outline_outlined, size: 40),
          Icon(Icons.shopping_cart_outlined, size: 40),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
