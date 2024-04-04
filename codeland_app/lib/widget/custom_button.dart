import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback ontap;
  Color backgroundColorbtn;
  double width;
  String btnTitle;
  Color? textcolorr;
double height;
   CustomButton({required this.height, required this.textcolorr,required this.btnTitle, required this.ontap,required this.backgroundColorbtn,required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: ontap,
           
            child: Container(
              height:height ,
              width: width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
               color:backgroundColorbtn
               ,boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Shadow color
        spreadRadius: 3, // Spread radius
        blurRadius: 3, // Blur radius
        offset: const Offset(0, 4), // Offset
      ),
    ],),

              child: Center(
                child: Text(
                  btnTitle,
                  style:  TextStyle(
                    fontSize: 20,
                    color: textcolorr ?? Colors.white ,
                  ),
                ),
              ),
            ),
          );
  }
}