import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authentication/phoneauth_screen.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 220,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, PhoneAuthScreen.id);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Contine with Number',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SignInButton(
            Buttons.Google,
            text: ('Contine with Google'),
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          SignInButton(
            Buttons.FacebookNew,
            text: ('Contine with Facebook'),
            onPressed: () {},
          ),
          SizedBox(height: 16),
          const Text(
            'Login With E-mail',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline),
          )
        ],
      ),
    );
  }
}
