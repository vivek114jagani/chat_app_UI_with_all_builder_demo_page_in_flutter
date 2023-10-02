import 'package:flutter/material.dart';

PreferredSize preferredsize() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: Container(
        padding: const EdgeInsets.only(left: 10),
        child: const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK9gqFKRn28xKHD1CAbEevdzsLmsv5yQkGnQ&usqp=CAU"),
        ),
      ),
      titleSpacing: 50,
      title: const Text(
        "Inbox",
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(66, 139, 137, 137),
            radius: 20,
            child: Icon(
              Icons.photo_camera,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ],
    ),
  );
}
