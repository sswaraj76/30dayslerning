//import 'package:codepur/widget/loginbutton.dart';
import 'package:flutter/material.dart';

import '../utilites/routesnames.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username', hintText: 'Enter Username'),
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutesName.home);
                    },
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
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 5),
                        color: Theme.of(context).accentColor,
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
    );
  }
}
