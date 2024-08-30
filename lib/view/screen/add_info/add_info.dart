import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:set_and_get_data_from_firebase/controller/getx_controller/add_info.dart';
import 'package:set_and_get_data_from_firebase/view/common_widget/common_button.dart';
import 'package:set_and_get_data_from_firebase/view/common_widget/common_textfield.dart';

class AddInfo extends StatelessWidget {
  const AddInfo({super.key});

  @override
  Widget build(BuildContext context) {
    AddInfoController controller = Get.put(AddInfoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Info"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonTextField(
              hintText: 'Name',
              controller: controller.nameController,
            ),
            CommonTextField(
              hintText: 'Id',
              controller: controller.idController,
            ),
            CommonTextField(
              hintText: 'Course Name',
              controller: controller.courseController,
            ),
            CommonTextField(
              hintText: 'Institute',
              controller: controller.instituteController,
            ),
            CommonTextField(
              hintText: 'Department',
              controller: controller.depController,
            ),
            CommonTextField(
                hintText: 'Join Date',
                controller: controller.joinDateController),
            CommonTextField(
              hintText: 'Validity',
              controller: controller.validityController,
            ),
            const SizedBox(
              height: 40,
            ),
          CommonButton(
            buttonName: 'GET INFO',
            onTap: () {
              controller.addUserInfo();
            },
          )
          ],
        ),
      ),
    );
  }
}
