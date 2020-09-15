
import 'package:flutter/material.dart';

class PriButton extends StatelessWidget {
  final String text;
  final double size;
  PriButton({this.text,this.size});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF17ead9),
            Color(0xFF6078ea),
          ],
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        width: size,
        constraints: BoxConstraints(maxWidth: 300.0, minHeight: 40.0),
        alignment: Alignment.center,
        child: Text(
          text != null ? text : 'PRESS',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Kanit-Bold",
            fontSize: 18,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
