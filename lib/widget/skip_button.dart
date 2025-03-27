import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  void Function()? onPressed;
  SkipButton({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: onPressed,
          child: Text("Skip",style: TextStyle(
              color: Colors.black
          ),)
      ),
    );

  }
}
