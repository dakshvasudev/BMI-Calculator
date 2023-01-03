import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.navigate,required this.text});
  final Function navigate;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>navigate(),
      child: Container(

        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: Text(
            text,
            style: kBottomTextStyle,
          ),
        ),
      ),
    );
  }
}