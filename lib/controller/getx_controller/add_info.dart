import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddInfoController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController depController = TextEditingController();
  TextEditingController joinDateController = TextEditingController();
  TextEditingController validityController = TextEditingController();

  addUserInfo()async{
    Map<String,dynamic> info ={
      "name": nameController.text,
      "id": idController.text,
      "course name": courseController.text,
      "institute": instituteController.text,
      "department": depController.text,
      "join date": joinDateController.text,
      "validity": validityController.text
    };
  }
}