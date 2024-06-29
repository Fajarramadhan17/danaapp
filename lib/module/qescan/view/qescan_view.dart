import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/qescan_controller.dart';

class QescanView extends StatefulWidget {
  const QescanView({Key? key}) : super(key: key);

  Widget build(context, QescanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qescan"),
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
  State<QescanView> createState() => QescanController();
}
