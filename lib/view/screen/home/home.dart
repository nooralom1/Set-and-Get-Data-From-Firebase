
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:set_and_get_data_from_firebase/view/common_widget/common_button.dart';
import 'package:set_and_get_data_from_firebase/view/screen/add_info/add_info.dart';
import 'package:set_and_get_data_from_firebase/view/screen/home/widget/infoviewcard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const InfoViewCard(
              name: 'Name: ',
              id: 'Id: ',
              course: 'Course Name: ',
              institute: 'Institute: ',
              department: 'Department: ',
              join: 'Join Date: ',
              validity: 'Validity: ',
            );
          }),
      bottomNavigationBar: BottomAppBar(
        child: CommonButton(buttonName: "ADD INFO", onTap: (){
          Get.to(()=>const AddInfo());
        }),
      ),
    );
  }
}
