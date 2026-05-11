import "package:checkpoint/sections/category_section_widget.dart";
import "package:checkpoint/sections/products_section_widget.dart";
import "package:checkpoint/widgets/banner_homescreen_widget.dart";
import "package:checkpoint/sections/subscription_section_widget.dart";
import "package:checkpoint/widgets/custom_app_bar_widget.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BannerHomescreenWidget(),
            CategorySectionWidget(),
            ProductsSectionWidget(),
            SubscriptionSectionWidget(),
          ],
        ),
      ),
    );
  }
}
