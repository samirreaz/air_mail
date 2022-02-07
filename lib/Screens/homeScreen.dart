import 'package:airmail/DesignUI/drawer_components.dart';
import 'package:airmail/Page/camera_page.dart';
import 'package:airmail/Page/chat_page.dart';
import 'package:airmail/Screens/game_screen.dart';
import 'package:airmail/Screens/select_contact_page.dart';
import 'package:flutter/material.dart';

import 'calls_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AirMail",
          style: TextStyle(
              color: Color(0xffffff00),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.redAccent,
                Colors.purple,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'New Contacts',
                  child: Text('New Contacts'),
                ),
                PopupMenuItem(
                  value: 'New Broadcast',
                  child: Text('New Broadcast'),
                ),
                PopupMenuItem(
                  value: 'Airmails Web',
                  child: Text('Airmails Web'),
                ),
                PopupMenuItem(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: 'Log out',
                  child: Text('Log out'),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.orange[200],
          indicatorWeight: 4,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.inbox),
              text: 'Inbox',
            ),
            Tab(
              icon: Icon(Icons.contacts),
              text: 'Contacts',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Calls',
            ),
            Tab(
              icon: Icon(Icons.sports_esports_outlined),
              text: 'Games',
            ),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // CameraPage(),
          ChatPage(),
          SelectContact(),
          CallScreen(),
          GameScreen(),
        ],
      ),
      drawer: DrawerComponent(),
    );
  }
}
