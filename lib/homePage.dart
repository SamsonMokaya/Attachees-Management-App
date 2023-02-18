import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        actions: [
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text("Welcome back " + user.email!),
      ),
    );
  }
}