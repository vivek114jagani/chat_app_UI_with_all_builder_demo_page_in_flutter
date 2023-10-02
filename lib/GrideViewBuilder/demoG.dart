// ignore_for_file: file_names
// This code is only for understanding Grideview, it is not used for any other purpose.
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        // Enter the number of "items" you have seen.
        itemCount: 10,
        // Whenever "GridView.Builder" is used, it is mandatory to use a widget named "GridLayout:SliverGridDelegateWithFixedCrossCount()".
        // And it is necessary to use as many properties as are used within this.
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // "("Width/Height")" comes inside "ChildAspectRation".
          childAspectRatio: 300 / 500,
          // Enter the number of containers seen in Column within this.
          crossAxisCount: 4,
          // Write the number of spaces you want to put in the horizontal.
          crossAxisSpacing: 10,
          // Stand up and write the number of spaces you want to put in it the vertical.
          mainAxisSpacing: 15,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.orange,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          );
        },
      ),
    );
  }
}
