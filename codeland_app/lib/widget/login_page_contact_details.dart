import 'package:codeland_app/constants/constanst.dart';
import 'package:flutter/material.dart';

class detailsWidgetLoginScreen extends StatelessWidget {
  const detailsWidgetLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Text("For Assistance & Login Details Contact:   ",style: Constants.constants.textStyle,),
              ],
            ),
        const    SizedBox(height: 4),
            Wrap(
              children: [
                Text("English, Kannada & Telugu:",style: Constants.constants.textStyle,),
                Text(" "),
             const   Text(
                  "7406333800  ",
                  style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.orange)
                ),
              ],
            ),
         const   SizedBox(height: 4),
            Wrap(
              children: [
                Text("English, Kannada & Hindi:",style: Constants.constants.textStyle,),
                Text(" "),
             const   Text(
                  "9071386515    ",
                  style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.orange),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text("v1.7© 2023,Codeland Infosolutions Pvt Ltd."),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
