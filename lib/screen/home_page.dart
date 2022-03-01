import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/widgets/header.dart';
import 'package:portfolio_site/widgets/my_works.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../widgets/big_image_with_text.dart';
import '../widgets/footer.dart';
import '../widgets/my_services.dart';

class HomePage extends StatelessWidget {
  AutoScrollController scrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 0.1 * context.height),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(children: [
                  AutoScrollTag(
                    key: const ValueKey("0"),
                    controller: scrollController,
                    index: 0,
                    child: const BigImageWithText(),
                  ),
                  AutoScrollTag(
                    key: const ValueKey(1),
                    controller: scrollController,
                    index: 1,
                    child: MyWork(),
                  ),
                  AutoScrollTag(
                    key: const ValueKey(2),
                    controller: scrollController,
                    index: 2,
                    child: MyServices(),
                  ),
                  AutoScrollTag(
                      key: const ValueKey(3),
                      controller: scrollController,
                      index: 3,
                      child: Footer()),
                ]),
              ),
            ),
            Header(scrollController: scrollController),
          ],
        ));
  }
}
