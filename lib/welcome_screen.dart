import 'package:amit_session/data_layer/palyer_data.dart';
import 'package:amit_session/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = 'welcome_screen';
  String player1Name = '';
  String player2Name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Welcome To Amit X-O',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                player1Name = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter Player 1 Name',
              ),
            ),
            TextField(
              onChanged: (value) {
                player2Name = value;
              },
              decoration: InputDecoration(hintText: "enter player 2 Name"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName,
                   arguments: playerData(player1Name: player1Name, player2Name: player2Name));
                },
                child: Text('go to play'))
          ],
        ),
      ),
    );
  }
}
