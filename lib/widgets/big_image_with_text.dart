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

        Container(
          margin: EdgeInsets.only(top:20,bottom: 20),
          child: Column(
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  label(label: "Hy ! I Am", fontSize: (context.width > 960) ? 0.02* context.width : 0.05 * context.width,color: Colors.black87),
                  label(label: "Sulav Parajuli", fontSize: (context.width > 960) ? 0.04* context.width : 0.06 * context.width, color: Colors.orange),
                  label(label: "I develop Modern Mobile & Web Applications.", fontSize:  (context.width > 960) ? 0.01* context.width : 0.03 * context.width,color: Colors.black54),
                  label(label: "#Flutter  #Android  #IOS  #Web", fontSize:  (context.width > 960) ? 0.01 * context.width : 0.03 * context.width,color: Colors.blue),
                  Padding(
                    padding: EdgeInsets.only(top: 0.015 * context.width),
                    child: buttonPortfolio(label: "Hire Me",padding: 0.05 * context.width),
                  )
                ],
              )


            ],
          ),
        ),

        if(context.width > 960) 
        Image.asset("assets/images/sulav.png",width: 0.45 * context.width,fit: BoxFit.cover,)


      ],
    );
  }
}