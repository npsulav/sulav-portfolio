import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/text_components.dart';

class MyServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      width: context.width,
      child: Column(
        children: [
          Container(
            width: context.width,
            height: 100,
            decoration: const BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                label(
                    label: "</My Works>",
                    color: Colors.black,
                    fontSize: 0.015 * context.width)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
