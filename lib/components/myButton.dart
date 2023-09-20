import 'package:flutter/material.dart';

import '../assets/colours.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;

  const myButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text("Sign In",
            style: TextStyle(
            color: Colors.white,
            ) ,
          ),
        ),
      ),
    );
  }
}

