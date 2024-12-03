import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import '../controller/topup_controller.dart';

class TopupView extends StatefulWidget {
  TopupView({Key? key}) : super(key: key);

  Widget build(context, TopupController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<TopupView> createState() => TopupController();
}
