import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:set_and_get_data_from_firebase/controller/firebase_controller/add_info.dart';

class AddInfoController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController depController = TextEditingController();
  TextEditingController joinDateController = TextEditingController();
  TextEditingController validityController = TextEditingController();
  RxBool isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

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
    isLoading.value = true;
    log("================");
    await AddInfoService.addInfoService(info: info);
    log("=======11111111=========");
    isLoading.value = false;
  }
}