import 'package:all_builders/Widgets/AppBar/preferredsize.dart';
import 'package:flutter/material.dart';
import '../List_Store/chatList/chatListModel.dart';
import '../List_Store/imageInformation/image_info_list.dart';
import '../TextForm/home_text.dart';
import '../Widgets/FloatingButtons/bottombar.dart';
import '../Widgets/FloatingButtons/floatingbut.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredsize(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: MyText(),
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(31, 25, 25, 25),
                        radius: 30,
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    );
                  } else {
                    return CircleAvatar(
                      backgroundImage: NetworkImage(
                        imageList[index] as String,
                      ),
                      radius: 30,
                    );
                  }
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatList.length,
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(chatList[index].netImage ?? ""),
                  ),
                  title: Text(
                    chatList[index].title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    chatList[index].subTitle,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  trailing: Text(
                    chatList[index].dateTime ?? '',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const MyFloatingActionButton(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
