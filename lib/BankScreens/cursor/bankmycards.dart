// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:managment/Bankdata/utlity.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String cardname;

  var decoration;

  MyCard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.decoration,
      required this.cardname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 30,
        padding: EdgeInsets.all(20),

        decoration: decoration,
        // ignore: prefer_const_constructors
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2,
            ),
            Text(
              'M,John',
              style: TextStyle(
                color: Color.fromARGB(255, 180, 177, 177),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$ ${total()}',
              style: TextStyle(
                  color: Color.fromARGB(255, 87, 3, 118),
                  fontSize: 34,
                  fontFamily: AutofillHints.addressCity,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardname,
                  style: TextStyle(
                      color: Color.fromARGB(255, 121, 3, 17),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '' +
                      "SSB" +
                      cardNumber.toString() +
                      "/" +
                      "A" +
                      expiryMonth.toString(),
                  style: TextStyle(color: Color.fromARGB(255, 236, 179, 8)),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(
                    color: Color.fromARGB(255, 121, 3, 17),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
