// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:managment/BankScreens/BankName.dart';
import 'package:managment/BankScreens/Bankhome.dart';
import 'package:managment/BankScreens/Bankstatistics.dart';
import 'package:managment/Bankdata/model/add_date.dart';
import 'package:managment/Bankwidgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BankName(),
    );
  }
}
