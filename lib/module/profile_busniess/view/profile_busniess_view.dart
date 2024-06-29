import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/profile_busniess_controller.dart';

class ProfileBusniessView extends StatefulWidget {
  const ProfileBusniessView({Key? key}) : super(key: key);

  Widget build(context, ProfileBusniessController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileBusniess"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileBusniessView> createState() => ProfileBusniessController();
}
