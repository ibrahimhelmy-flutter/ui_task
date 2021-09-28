import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
