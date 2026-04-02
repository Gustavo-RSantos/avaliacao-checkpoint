import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(primaryColor: Color(0xFF213366)),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 30,
            children: [
              const SizedBox(height: 60),
              Image.network(
                'https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=375,h=259,fit=crop/YD04P1L0WvuWvzbw/uninassau-logo-6ea85e82a5-seeklogo.com-mjE9XbxVbKFqeVWE.png',
                width: 250,
                height: 120,
              ),
              const Text(
                'Bem-vindo(a)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: .bold,
                  color: Color(0xFF333333),
                ),
              ),
              const Text(
                'Faça login para continuar',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666)
                ),
              ),
              TextField(
                keyboardType: .emailAddress,
                decoration: InputDecoration(
                  hintText: 'Digite seu e-mail',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Digite sua senha',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFDDDDDD)),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF052b82),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}