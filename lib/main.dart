import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.brown[200],
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: Image.asset('assets/Images/hello_logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.brown[700],
                    ),
                    hintText: "E M A I L",
                    hintStyle: TextStyle(color: Colors.brown[700]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.brown, width: 2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _obscuretext,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.brown[700],
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscuretext = !_obscuretext;
                        });
                      },
                      child: Icon(
                        _obscuretext
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.brown[700],
                      ),
                    ),
                    hintText: "P A S S W O R D",
                    hintStyle: TextStyle(color: Colors.brown[700]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.brown, width: 5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Don't have am account? ",
                        style:
                            TextStyle(fontSize: 20, color: Colors.brown[700]),
                      ),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 20, color: Colors.brown[700]),
                ),
              ),
              Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.brown[900]),
                    elevation: const MaterialStatePropertyAll(50)),
                onPressed: null,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 95),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )
                  ],
                )),
                            ),
              Row(children: [
                Icon(Icons.g_mobiledata),
              ],)
            ],),
            )
            );
  }
}
