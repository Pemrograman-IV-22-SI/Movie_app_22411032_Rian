import 'package:flutter/material.dart';
import 'package:movie_apps/auth/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String routeName = "login-page";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            Image.asset("assets/login.png", width: 150, height: 150,),
            const SizedBox(height: 16,),
            const Text("Login Akun", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16,),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: const Size.fromHeight(50)),
              child: const Text("Login",style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Belum Punya Akun ?'),
                  TextButton(onPressed: () {
                  Navigator.pushNamed(context,RegisterPage.routeName);
                  }, child: Text('Daftar Disini!'))
                ],
              )
          ],
          ),
            )
        )
      )
    );
  }
}