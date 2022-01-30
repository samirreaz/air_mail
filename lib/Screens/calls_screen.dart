import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          callCard(
            'Bill Gates',
            Icons.call_end,
            Colors.red,
            '5:00 PM',
          ),
        ],
      ),
    );
  }

  Widget callCard(String name, IconData icon, Color color, String time) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: Icon(Icons.person),
        ),
        title: Text(name,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
        subtitle: Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(width: 6),
            Text(
              time,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 25,
          color: Colors.purpleAccent[400],
        ),
      ),
    );
  }
}
