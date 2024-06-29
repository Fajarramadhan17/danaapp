import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/transaction_hostory_in _progress_controller.dart';

class TransactionHostoryInProgressView extends StatefulWidget {
  const TransactionHostoryInProgressView({Key? key}) : super(key: key);

  Widget build(context, TransactionHostoryInProgressController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TransactionHostoryInProgress"),
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
  State<TransactionHostoryInProgressView> createState() =>
      TransactionHostoryInProgressController();
}
