import 'package:flutter/material.dart';

PreferredSize chatPreferredsize(context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      leading: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.blue[600],
          ),
        ),
      ),
      titleSpacing: 45,
      title: const Padding(
        padding: EdgeInsets.only(top: 15),
        child: Text(
          "Sophia",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue[600],
                size: 28,
              ),
              const SizedBox(width: 15),
              Icon(
                Icons.videocam,
                color: Colors.blue[600],
                size: 28,
              ),
              const SizedBox(width: 15),
              Icon(
                Icons.info,
                color: Colors.blue[600],
                size: 28,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
