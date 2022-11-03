import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final authentication = FirebaseAuth.instance;
  User? loggedUser;

  void getCurrentUser() {
    try {
      final user = authentication.currentUser;
      if (user != null) {
        loggedUser = user;
        print(loggedUser!.email);
      }
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        actions: [
          IconButton(
            onPressed: () {
              authentication.signOut();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.exit_to_app_sharp,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Chat Screen'),
      ),
    );
  }
}
