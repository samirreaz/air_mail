import 'package:airmail/Model/chat_model.dart';
import 'package:airmail/Screens/indivisual_page.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndivisualPage(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(chatModel.icon),
            ),
            title: Text(chatModel.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                Icon(Icons.done_all, color: Colors.blue, size: 16),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
        ],
      ),
    );
  }
}
