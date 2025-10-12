import 'package:flutter/material.dart';
import 'package:flutter_learn/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Image.asset(
                          "assets/images/img3.jpg",
                          fit: BoxFit.cover,
                          height: 200,
                          width: 200,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Welcome $name",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 32.0,
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username cannot be empty";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                                setState(() {});
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Your Password",
                                labelText: "Password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 6) {
                                  return "Password length should be at least 6";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 40),

                            Material(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(
                                changeButton ? 50 : 8,
                              ),
                              child: InkWell(
                                onTap: () => moveToHome(context),
                                child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: changeButton ? 50 : 150,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: changeButton
                                      ? Icon(Icons.done, color: Colors.white)
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                ),

                                // ElevatedButton(
                                //   child: Text("Login"),
                                //   style: TextButton.styleFrom(
                                //     minimumSize: Size(120, 40),
                                //   ),
                                //   onPressed: () {
                                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                                //   },
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
