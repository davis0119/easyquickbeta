import 'package:flutter/material.dart';
import 'package:welcome_easyquick_app/Screens/Login/loging_screen.dart';
import 'package:welcome_easyquick_app/Screens/Signup/components/background.dart';
import 'package:welcome_easyquick_app/Screens/Signup/components/or_divider.dart';
import 'package:welcome_easyquick_app/Screens/Signup/components/social_icon.dart';
import 'package:welcome_easyquick_app/components/already_have_an_account_acheck.dart';
import 'package:welcome_easyquick_app/components/rounded_button.dart';
import 'package:welcome_easyquick_app/components/rounded_input_field.dart';
import 'package:welcome_easyquick_app/components/rounded_password_field.dart';
import 'package:welcome_easyquick_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/The_Arrow.jpg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text:"SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                      },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /*SocialIcon(
                  iconSrc: 'sssets/network_google.jpeg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'sssets/network_google.jpeg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'sssets/network_google.jpeg',
                  press: () {},
                ),*/
                Icon(
                    Icons.add_call,
                  color: Colors.pink,
                  size: 40,
                ),
                Icon(
                    Icons.add_a_photo,
                  color: Colors.blue,
                  size: 40,
                ),
                Icon(
                    Icons.add_comment,
                  color: Colors.amber,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




