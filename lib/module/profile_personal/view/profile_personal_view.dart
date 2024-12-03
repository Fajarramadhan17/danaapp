import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/profile_personal_controller.dart';

class ProfilePersonalView extends StatefulWidget {
  ProfilePersonalView({Key? key}) : super(key: key);

  Widget build(context, ProfilePersonalController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0.0,
        actions: [],
      ),
    );
  }

  @override
  State<ProfilePersonalView> createState() => ProfilePersonalController();
}
