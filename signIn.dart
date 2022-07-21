import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff55418e),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                      child: Image.asset(
                    'assets/logo.png',
                    height: 26,
                    width: 56,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Text('SOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Mullish',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.26,
                          ))),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(children: [
                  Container(
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.26,
                          ))),
                ]),
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Username',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'PhoneNumber',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Pin',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Confirm Pin',
                          labelStyle: TextStyle(
                            fontFamily: 'Mullish',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      Container(
                        width: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("SUBMIT"),
                          textColor: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.greenAccent,
                            activeColor: Colors.red,
                            value: this.valuefirst,
                            onChanged: (bool? value) {
                              setState(() {
                                this.valuefirst = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: Wrap(
                              children: [
                                Text(
                                    style: TextStyle(
                                      fontFamily: 'Mullish',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    "By signing in you accept the Terms and Services"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mullish',
                            fontWeight: FontWeight.bold,
                          ),
                          "Already have an account?Sign in"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
