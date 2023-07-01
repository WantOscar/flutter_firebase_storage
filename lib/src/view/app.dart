import 'package:flutter/material.dart';
import 'package:flutter_firebase_storage/src/controller/app_controller.dart';
import 'package:get/get.dart';

class App extends GetView<AppController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: controller.pickImage,
            icon: const Icon(Icons.image),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      body: Obx(
        () => Column(
          children: [
            _pickImage(),
            // _showImages(),
          ],
        ),
      ),
    );
  }

  Widget _pickImage() {
    return Container(
      width: Get.size.width,
      height: Get.size.width,
      color: Colors.grey,
      child: (controller.pcikedImage == null)
          ? const Icon(
              Icons.image_not_supported,
              size: 100,
              color: Colors.white,
            )
          : Image.file(
              controller.pickedImage,
              fit: BoxFit.cover,
            ),
    );
  }
}
