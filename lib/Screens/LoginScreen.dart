import 'dart:io';

import 'package:flutter/material.dart';
import 'package:messenger_clone_modified/Widgets/LoginScreen/LoginForm.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Are you sure you want to close the app?'),
            actions: [
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () => exit(0),
              ),
            ],
          ),
          barrierDismissible: true,
        );
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Image.asset(
                    'assets/png_images/applogo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Facebook Messenger\n',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          TextSpan(
                            text: 'CLONE',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                LoginForm(),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
