// This code is only for understanding LIstView, it is not used for any other purpose.
import 'package:flutter/material.dart';

class AllBuilder extends StatelessWidget {
  const AllBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatListModel> chatList = [  // goto ChatListModel class.
    // If you want to use 2 different lists given below then it can be done in this way.
    // In this way, the index of title and subtitle is same, so there is no problem of error.
      ChatListModel(
        title: "One",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Two",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Three",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Four",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
      ChatListModel(
        title: "Five",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Five",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
      ChatListModel(
        title: "One",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Two",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Three",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Four",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
      ChatListModel(
        title: "Five",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Five",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
      ChatListModel(
        title: "One",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Two",
        subTitle: "This is the first number",
      ),
      ChatListModel(
        title: "Three",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Four",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
      ChatListModel(
        title: "Five",
        subTitle: "This is the first number",
      ),
      ChatListModel(
          title: "Five",
          subTitle: "This is the first number",
          dateTime: DateTime.now().toString().substring(0, 11)),
    ];

    // List<String> list = [
    //   "One",
    //   "Two",
    //   "Three",
    //   "Four",
    //   "Five",
    // ];
    //  Any one of the list above and the list given below shouldn't have more data than the other.
    // If there is more, write the name of the list which has less data in "itemcount" and give ".Length".
    // List<String> subList = [
    //   "This is the first number",
    //   "This is the seconde number",
    //   "This is the third number",
    //   "This is the fourth number",
    //   "This is the fifth number",
    //   "This is the sixth number",
    // ];

    return Scaffold(
      body: SingleChildScrollView(    // If you want to write a SingleChildScrollView here, the following ListView.Builder should be wrapped with Expanded.
        child: Column(
          children: [
            TextFormField(),
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: 50,
                shrinkWrap: true,   // This should only be used when you have taken "column" or "Row" above.
                scrollDirection: Axis.horizontal, // If you want to view data in horizontal line, you have to write "Axis.Horizontal" in "ScrollDirection".
                itemBuilder: (context, index) => const CircleAvatar(
                  radius: 30,
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
              ),
            ),
            ListView.builder(
              // Wrap the listview with a new "expanded" argument if you only want to scroll this listview.
              //  // goto SingleChildScrollView.
              itemCount: chatList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),    //  When you have 2 listview's and the scrolling of both is mixed, you have to write "physics: NeverScrollableScrollPhysics()" in the bottom listview.
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(),
                  title: Text(chatList[index].title),
                  subtitle: Text(chatList[index].subTitle),
                  trailing: Text(chatList[index].dateTime ?? 'Time'),   // Thus (?? "") <== This operator is called the nullable operator, in which the object written inside ("") is placed at the index in which the data is not stored.
                );
              },
            ),
        
          ],
        ),
      ),
    );
  }
}


class ChatListModel {
  // aa class ni ander jetalapan variable chhe te farajiyat upar aapeli List ma lakhava padase.
  final String title;     // Compulsory
  final String subTitle;    // Compulsory
  final String? dateTime; // aa Compulsory nathi karanke, String ni pachhi? chhe etale date time koi pan ek ma lakhaso to pan chale.

  ChatListModel({
    required this.title,
    required this.subTitle,
    this.dateTime,
  });
}
