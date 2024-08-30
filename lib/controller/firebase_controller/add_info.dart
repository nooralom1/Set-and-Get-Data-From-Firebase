import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';


class AddInfoService{

  static Future<bool> addInfoService({required Map<String,dynamic>info})async{
    try{
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("user").add(info);
      return true;
    }catch(e){
      debugPrint("Error: $e");
    }
    return false;
  }
}