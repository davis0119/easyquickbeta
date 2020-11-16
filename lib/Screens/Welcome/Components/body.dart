import 'package:flutter/material.dart';
import 'package:welcome_easyquick_app/Screens/Login/loging_screen.dart';
import 'package:welcome_easyquick_app/Screens/Signup/signup_screen.dart';
import 'package:welcome_easyquick_app/Screens/Welcome/Components/background.dart';
import 'package:welcome_easyquick_app/components/rounded_button.dart';
import 'package:welcome_easyquick_app/constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
            "Welcome to EasyQuick Trading, LLC",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Playfair_Display',
            ),
          ),
            SizedBox(height: size.height * 0.03,),
            Image.asset(
              'assets/EasyQuickpic.jpg',
              height: size.height * 0.6,
            ),
            SizedBox(height: size.height * 0.05,),
            RoundedButton(
              text: "LOGIN",
              //color: kPrimaryColor,   //!because Idk if its needed!
              press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  },
                ),
              );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}




