import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 20,
            left: 30,
            child: Text("Welcome Back!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Playfair_Display',
              ),
              //width: size.width * 0.5,  !this is not necessary!
            ),
          ),
          child,
        ],
      ),
    );
  }
}