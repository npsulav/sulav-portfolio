import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/components/text_components.dart';

class MyWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.width,
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.white60,
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              label(
                  label: "<My Works>",
                  color: Colors.black,
                  fontSize: 0.015 * context.width)
            ],
          ),
        ),
        Container(
          width: context.width,
          decoration: const BoxDecoration(
            color: Colors.white60,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 0.015 * context.height),
                child: Wrap(
                  
                  children: [
                      
                        workCard(
                      width: 400,
                        title: "Vlearn",
                        logo: "assets/images/v.png",
                        desc:
                            "Crisp is an initiative to provide short news for the mobile generation on the app.",
                        workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/35f4v5E"),
                
                    workCard(
                      width: 400,
                        title: "Crisps Inc.",
                        logo: "assets/images/logo.png",
                        desc:
                            "vlearn is an initiative which aims to be providing learning services \non the app",
                             workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/3Me8ZtA"),
                     
                       workCard(
                      width: 400,
                        title: "Vlearn",
                        logo: "assets/images/v.png",
                        desc:
                            "Crisp is an initiative to provide short news for the mobile generation on the app.",
                        workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/35f4v5E"),
                
                    workCard(
                      width: 400,
                        title: "Crisps Inc.",
                        logo: "assets/images/logo.png",
                        desc:
                            "vlearn is an initiative which aims to be providing learning services\n on the app",
                             workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/3Me8ZtA"),
                     
                      
                        workCard(
                      width: 400,
                        title: "Vlearn",
                        logo: "assets/images/v.png",
                        desc:
                            "Crisp is an initiative to provide short news for the mobile generation on the app.",
                        workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/35f4v5E"),
                
                    workCard(
                      width: 400,
                        title: "Crisps Inc.",
                        logo: "assets/images/logo.png",
                        desc:
                            "vlearn is an initiative which aims to be providing learning services\n on the app",
                             workedWith: "Flutter, Firebase, REST API, PHP, NextJS",
                        date: "2022-Present",
                        storeLink:
                            "https://bit.ly/3Me8ZtA"),
                      ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
