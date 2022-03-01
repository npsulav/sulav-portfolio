import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/components/text_components.dart';

class BigImageWithText extends StatelessWidget {
  const BigImageWithText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [

        Column(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                label(label: "Hy ! I Am", fontSize:  0.02* context.width,color: Colors.black87),
                label(label: "Sulav Parajuli", fontSize: 0.04 * context.width, color: Colors.orange),
                label(label: "I develop Modern Mobile & Web Applications.", fontSize:  0.01* context.width,color: Colors.black54),
                label(label: "#Flutter  #Android  #IOS  #Web", fontSize:  0.01* context.width,color: Colors.blue),
                Padding(
                  padding: EdgeInsets.only(top: 0.015 * context.width),
                  child: buttonPortfolio(label: "Hire Me",padding: 0.025 * context.width),
                )
              ],
            )


          ],
        ),


        Image.asset("assets/images/sulav.png",height: 0.7 * context.height,fit: BoxFit.cover,)


      ],
    );
  }
}