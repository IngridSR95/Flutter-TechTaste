import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.login))],
      ),
      body: Padding(
        padding: EdgeInserts.symmetric(horizontal: 24.0),
        child: Column(
          spacing: 32.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/logo.png', width: 147)),
            Text("Boas-Vindas!"),
            TextFormField(),
            Text("Escolha por categoria"),
            Image.asset("assets/banners/banner_promo.png"),
            Text("Bem avaliados"),
          ],
        ),
      ),
    );
  }
}
