import 'package:airmail/DesignUI/custom_card.dart';
import 'package:airmail/Model/chat_model.dart';
import 'package:airmail/Screens/select_contact_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: 'Bill Gates',
        icon: "assets/images/BillGates.jpeg",
        time: "4.00",
        currentMessage: "Hi"),
    ChatModel(
        name: 'Boris Johnson',
        icon: "assets/images/BorisJohnson.jpg",
        time: "4.00",
        currentMessage: "Hello, How are you?"),
    ChatModel(
        name: 'Donald Trump',
        icon: "assets/images/DonaldTrump.jpg",
        time: "4.00",
        currentMessage: "Nice, I am fine"),
    ChatModel(
        name: 'Recep Tayyip Erdogan',
        icon: "assets/images/Erdogan.jpg",
        time: "4.00",
        currentMessage: "Hey, Whats up?"),
    ChatModel(
        name: 'Jack Ma',
        icon: "assets/images/JackMa.jpg",
        time: "4.00",
        currentMessage: "What About You?"),
    ChatModel(
        name: 'Joe Biden',
        icon: "assets/images/JoeBiden.jpg",
        time: "4.00",
        currentMessage: "Nice to meet you"),
    ChatModel(
        name: 'John Abrahm',
        icon: "assets/images/JohnAbraham.jpg",
        time: "4.00",
        currentMessage: "Nice to meet you"),
    ChatModel(
        name: 'Steve Jobs',
        icon: "assets/images/SteveJobs.jpg",
        time: "4.00",
        currentMessage: "Nice to meet you"),
    ChatModel(
        name: 'Sundor Pichai',
        icon: "assets/images/SundorPichai.jpg",
        time: "4.00",
        currentMessage: "Nice to meet you"),
    ChatModel(
        name: 'Vladimir Putin',
        icon: "assets/images/VladimirPutin.jpg",
        time: "4.00",
        currentMessage: "Nice to meet you"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.chat),
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
      //       return SelectContact();
      //     }));
      //   },
      // ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomCard(
              chatModel: chats[index],
            );
          }),
    );
  }
}
