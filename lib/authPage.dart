import 'package:atacheed_app/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homePage.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checking"),
      ),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){

          //if user is logged in
          if(snapshot.hasData){
            return HomePage();
          }else{
            return LoginPage(onTap: (){});
          }
        },
      ),
    );
  }
}
