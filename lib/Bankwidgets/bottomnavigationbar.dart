import 'package:flutter/material.dart';
import 'package:managment/BankScreens/Bankadd.dart';
import 'package:managment/BankScreens/Bankfeatures.dart';
import 'package:managment/BankScreens/Bankhome.dart';
import 'package:managment/BankScreens/Bankstatistics.dart';

class BankBottom extends StatefulWidget {
  const BankBottom({Key? key}) : super(key: key);

  @override
  State<BankBottom> createState() => _BankBottomState();
}

class _BankBottomState extends State<BankBottom> {
  int index_color = 0;
  List Screen = [
    BankHome(),
    Statistics(),
    BankFeatures(
      title: 'Explore',
    ),
    Statistics()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BankAdd_Screen()));
          },
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 88, 81, 219)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0
                      ? Color.fromARGB(255, 88, 81, 219)
                      : Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: index_color == 1
                      ? Color.fromARGB(255, 88, 81, 219)
                      : Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: index_color == 2
                      ? Color.fromARGB(255, 88, 81, 219)
                      : Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 3;
                  });
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 3
                      ? Color.fromARGB(255, 88, 81, 219)
                      : Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
