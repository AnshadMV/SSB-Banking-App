// ignore_for_file: unused_import

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:managment/BankScreens/Bankhome.dart';
import 'package:managment/Bankwidgets/bottomnavigationbar.dart';

class BankName extends StatefulWidget {
  BankName({Key? key}) : super(key: key);

  @override
  State<BankName> createState() => _BankNameState();
}

class _BankNameState extends State<BankName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 1, 9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to SSB',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 150, 147, 147),
              ),
            ), // Add the heading here
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
                color: Color.fromARGB(255, 65, 4, 109),
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              transform: Matrix4.rotationZ(0.1),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BankBottom()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                        color: Color.fromARGB(255, 103, 5, 159),
                      ),
                      width: 120,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'Goo ',
                                style: TextStyle(
                                  fontFamily: 'f',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
