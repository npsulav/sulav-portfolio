import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../components/text_components.dart';

class Header extends StatefulWidget {

  AutoScrollController scrollController;

  Header({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return      Container(
      color: Colors.white,
          padding: EdgeInsets.all(0.015 * context.height),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.015 * context.height),
              child: titleText(
                  label: "Portfolio", fontSize: context.width * 0.015),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.015 * context.height),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;  
                      });
                      widget.scrollController.scrollToIndex(0, preferPosition: AutoScrollPosition.begin);                      
                    },
                    child: menuText(label: "About Me",selected: (pageIndex == 0))),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;  
                      });

                      widget.scrollController.scrollToIndex(1, preferPosition: AutoScrollPosition.end);
                    },
                    child: menuText(label: "My Works",selected: (pageIndex == 1))),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageIndex = 2;  
                      });

                      widget.scrollController.scrollToIndex(3, preferPosition: AutoScrollPosition.end);
                    },
                    child: menuText(label: "Contact",selected: (pageIndex == 2))),
                  buttonPortfolio(label: "Download My CV"),
                ],
              ),
            )
          ]),
        );
  }
}
