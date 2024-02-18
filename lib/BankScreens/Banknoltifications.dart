// ignore_for_file: unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:managment/BankScreens/cursor/stacked_card_courser.dart';

class BankNoltifications extends StatelessWidget {
  BankNoltifications({super.key, required this.title});
  final String title;

  final List<Widget> fancyCards = <Widget>[
    FancyCard(
      image: Image.asset("images/Deposit.png"),
      title: "New scheme starting Soon!",
    ),
    FancyCard(
      image: Image.asset("images/Education.png"),
      title: "Meeting-Today @2:00 ",
    ),
    FancyCard(
      image: Image.asset("images/food.png"),
      title: "Go for a Loan!",
    ),
    FancyCard(
      image: Image.asset("images/Health.png"),
      title: "What is Islamic Banking!",
    ),
    FancyCard(
      image: Image.asset("images/Home.png"),
      title: "For whom!",
    ),
    FancyCard(
      image: Image.asset("images/Transportation.png"),
      title: "Bank logo Revealed by Ajay Sir!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.arrow_back_ios_new),
        //     tooltip: 'Back',
        //     onPressed: () {},
        //   ),
        // ],
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.purpleAccent[400]!,
          ),
        ),
      ),
      body: StackedCardCarousel(
        items: fancyCards,
      ),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.image,
    required this.title,
  });

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: image,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            OutlinedButton(
              child: const Text("Learn more"),
              onPressed: () => print("Button was tapped"),
            ),
          ],
        ),
      ),
    );
  }
}
