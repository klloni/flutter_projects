import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/image/hey_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text("Welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter username",
                            labelText: "User name")),
                    const SizedBox(height: 15),
                    TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty!";
                          } else if (value.length < 6) {
                            return "Passwords should be at least 6 characters long!";
                          }

                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password")),
                    const SizedBox(height: 200),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () async {
                          navigateToHome(context);
                        },
                        onDoubleTap: () {
                          setState(() {
                            changeButton = false;
                          });
                        },
                        child: AnimatedContainer(
                          alignment: Alignment.center,
                          width: changeButton ? 50 : 150,
                          height: 50,
                          duration: const Duration(milliseconds: 150),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(milliseconds: 1000));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
}
