import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  var isLoginButtonTapped = false;

  var accountVerificationStatus = 'Verifying Account...';

  verifyAccount() {
    setState(() {
      isLoginButtonTapped = !isLoginButtonTapped;
    });
    Future.delayed(
      Duration(seconds: 5),
      () {
        if (passwordController.text == '' || emailController.text == '') {
          setState(() {
            isLoginButtonTapped = !isLoginButtonTapped;
          });
          Fluttertoast.showToast(
              msg: "Empty Textfields are not allowed.",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              fontSize: 16.0);
          return;
        }
        if (emailController.text != 'username@email.com') {
          setState(() {
            isLoginButtonTapped = !isLoginButtonTapped;
          });
          Fluttertoast.showToast(
              msg: "Email not registered.",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else if (passwordController.text != '123') {
          setState(() {
            isLoginButtonTapped = !isLoginButtonTapped;
          });
          Fluttertoast.showToast(
              msg: "Password does not match the email.",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          setState(() {
            isLoginButtonTapped = !isLoginButtonTapped;
          });
          Navigator.of(context).pushReplacementNamed('/homeScreen');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final keyboardNode = FocusScope.of(context);

    if (isLoginButtonTapped) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitDoubleBounce(
              color: Theme.of(context).primaryColor,
              size: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
            ),
            Text(accountVerificationStatus),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onEditingComplete: keyboardNode.nextFocus,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              onEditingComplete: verifyAccount,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
              ),
              child: SizedBox(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () => verifyAccount(),
                ),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
              ),
              child: SizedBox(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'CREATE AN ACCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    print(emailController.text);
                  },
                ),
              ),
            ),
            const Center(
              child: const Text(
                'You will not be creating a Facebook profile.',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: const Text(
                'FORGOT PASSWORD?',
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
