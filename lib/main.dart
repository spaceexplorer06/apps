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
      body: Column(
        children: [
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
                  borderSide: const BorderSide(color: Colors.brown, width: 2),
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
                    _obscuretext ? Icons.visibility : Icons.visibility_off,
                    color: Colors.brown[700],
                  ),
                ),
                hintText: "P A S S W O R D",
                hintStyle: TextStyle(color: Colors.brown[700]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.brown, width: 5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 20, color: Colors.brown[700]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(10, 60)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.brown[900]),
                    elevation: const MaterialStatePropertyAll(10)),
                onPressed: null,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 95,
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Expanded(
              child: Row(
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 20, color: Colors.brown[700]),
                  ),
                  GestureDetector(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showGeneralDialog(
                        barrierDismissible: true,
                        barrierLabel: "Sign up",
                        context: context,
                        pageBuilder: (context, _, __) => Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                            child: Container(
                              height: 620,
                              decoration: BoxDecoration(
                                  color: Colors.brown[300],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: Scaffold(
                                backgroundColor: Colors.transparent,
                                body: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 20),
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.email,
                                            color:
                                                Color.fromARGB(255, 51, 17, 4),
                                          ),
                                          hintText: "E M A I L",
                                          hintStyle: const TextStyle(
                                              color: Color.fromARGB(255, 51, 17, 4)),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: const BorderSide(
                                                color: Colors.brown, width: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric( horizontal: 12,
                                          vertical: 20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                            color:
                                                Color.fromARGB(255, 51, 17, 4),
                                          ),
                                          hintText: "P A S S W O R D",
                                          hintStyle: const TextStyle(
                                              color: Color.fromARGB(255, 51, 17, 4)),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: const BorderSide(
                                                color: Colors.brown, width: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 77, 44, 33),
                  ),
                ),
                Text("Or Continue With"),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Color.fromARGB(255, 77, 44, 33),
                ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 230, 219, 219)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                        onPressed: null,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.g_mobiledata,
                            size: 50,
                            color: Colors.black,
                          ),
                        )),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 230, 219, 219)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      onPressed: null,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.facebook,
                          size: 50,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
