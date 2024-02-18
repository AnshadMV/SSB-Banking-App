// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:managment/Bankdata/model/add_date.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:managment/Bankwidgets/bottomnavigationbar.dart';

class BankAdd_Screen extends StatefulWidget {
  const BankAdd_Screen({super.key});

  @override
  State<BankAdd_Screen> createState() => _BankAdd_ScreenState();
}

class _BankAdd_ScreenState extends State<BankAdd_Screen> {
  final box = Hive.box<Add_data>('data');
  DateTime date = new DateTime.now();
  String? selctedItem;
  String? selctedItemi;
  final TextEditingController expalin_C = TextEditingController();
  FocusNode ex = FocusNode();
  final TextEditingController amount_c = TextEditingController();
  FocusNode amount_ = FocusNode();
  final List<String> _item = [
    'food',
    "Transfer",
    "Transportation",
    "Education",
    "Health",
    "Home",
    "Withdraw",
    "Deposit",
  ];
  final List<String> _itemei = [
    'Income',
    "Expand",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount_.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 250, 247),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }

  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 193, 53, 132),
      ),
      height: 550,
      width: 340,
      child: Column(
        children: [
          SizedBox(height: 50),
          name(),
          SizedBox(height: 30),
          explain(),
          SizedBox(height: 30),
          amount(),
          SizedBox(height: 30),
          How(),
          SizedBox(height: 30),
          date_time(),
          Spacer(),
          save(),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  GestureDetector save() {
    return GestureDetector(
      onTap: () {
        var add = Add_data(
            selctedItemi!, amount_c.text, date, expalin_C.text, selctedItem!);
        box.add(add);
        Navigator.of(context).pop();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 247, 119, 55),
        ),
        width: 120,
        height: 50,
        child: Text(
          'Save',
          style: TextStyle(
            fontFamily: 'f',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  Widget date_time() {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(width: 2, color: Color.fromARGB(255, 255, 255, 255))),
      width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: TextButton(
          onPressed: () async {
            DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(2020),
                lastDate: DateTime(2100));
            if (newDate == Null) return;
            setState(() {
              date = newDate!;
            });
          },
          child: Text(
            'Date : ${date.year}/${date.day}/${date.month}',
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

  Padding How() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 252, 252, 252),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemei
              .map((e) => DropdownMenuItem(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _itemei
              .map((e) => Row(
                    children: [Text(e)],
                  ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              'method',
              style: TextStyle(color: const Color.fromARGB(255, 250, 250, 250)),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Padding amount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        focusNode: amount_,
        controller: amount_c,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'amount',
          labelStyle: TextStyle(
              fontSize: 17, color: const Color.fromARGB(255, 255, 255, 255)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2, color: Color.fromARGB(255, 255, 255, 255))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(width: 2, color: Color.fromARGB(255, 13, 13, 13))),
        ),
      ),
    );
  }

  Padding explain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: ex,
        controller: expalin_C,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'explain',
          labelStyle: TextStyle(
              fontSize: 17, color: const Color.fromARGB(255, 255, 255, 255)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 2, color: Color.fromARGB(255, 255, 255, 255))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(width: 2, color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
    );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 255, 254, 254),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItem,
          onChanged: ((value) {
            setState(() {
              selctedItem = value!;
            });
          }),
          items: _item
              .map((e) => DropdownMenuItem(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            child: Image.asset('images/BankImages/${e}.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item
              .map((e) => Row(
                    children: [
                      Container(
                        width: 42,
                        child: Image.asset('images/BankImages/${e}.png'),
                      ),
                      SizedBox(width: 5),
                      Text(e)
                    ],
                  ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              'For',
              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 88, 81, 219),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.pending_actions_rounded,
                          color: Colors.white),
                    ),
                    Text(
                      'Enter Your Transcation',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.free_cancellation_outlined,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
