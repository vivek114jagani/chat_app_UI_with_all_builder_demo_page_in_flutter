// ignore_for_file: file_names
// This code is only for understanding PageView, it is not used for any other purpose.
import 'package:flutter/material.dart';

class P1Page extends StatefulWidget {
  const P1Page({super.key});

  @override
  State<P1Page> createState() => _P1PageState();
}

class _P1PageState extends State<P1Page> {
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                // With the help of "pageview" we can write more than one page of code in just one code.
                controller: controller,
                // reverse: true,
                // scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  // if (value == 3) {
                  //   controller.jumpTo(2);    // With "controller.jumpto" the foot can also be moved back but the user does not feel that the foot has been moved back.
                  // } else {}
                },
                padEnds: true,
                allowImplicitScrolling: true, // With the help of this foot scrolling will be done.
                children: const [
                  // Everything you draw inside the children will automatically fall into different pages.
                  // Widgets placed outside of end children will remain as such.
                  Center(child: Text("One")),
                  Center(child: Text("Two")),
                  Center(child: Text("Three")),
                  Center(child: Text("Four")),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // With the help of this, the user will come back to the foot with the index of 0 number.
          controller.jumpToPage(0);
        },
      ),
    );
  }
}
