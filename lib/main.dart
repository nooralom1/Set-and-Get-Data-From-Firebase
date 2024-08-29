import 'package:flutter/material.dart';
import 'package:set_and_get_data_from_firebase/view/screen/add_info/add_info.dart';
import 'package:set_and_get_data_from_firebase/view/screen/home/home.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddInfo(),
    );
  }
}
