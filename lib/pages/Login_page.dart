import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/image/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 24.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "User name")),
                const SizedBox(height: 15),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "Password")),
                const SizedBox(height: 200),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent),
                        minimumSize: MaterialStateProperty.all(
                            Size(double.maxFinite, 36))),
                    onPressed: () {
                      print("Successfully logged in!");
                    },
                    child: const Text("Login")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
