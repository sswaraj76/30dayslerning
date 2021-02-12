import 'package:flutter/material.dart';

import '../utilites/routesnames.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutesName.home);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/Images/A1.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome $name',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Username', hintText: 'Enter Username'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username is Empty";
                          } else if (value.length < 6) {
                            return "short username";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password is Empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 30,
                      ),
                      Material(
                        color: Theme.of(context).accentColor,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 5),
                        child: InkWell(
                          splashColor: Colors.orange,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 100),
                            height: 50,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(Icons.done)
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //   onPressed: () {
                      //
                      //   },
                      //   child: Text(
                      //     'Log In',
                      //   ),
                      //   style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
