import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/transaction_history_comleted_controller.dart';

class TransactionHistoryComletedView extends StatefulWidget {
  const TransactionHistoryComletedView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryComletedController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TransactionHistoryComleted"),
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
  State<TransactionHistoryComletedView> createState() =>
      TransactionHistoryComletedController();
}
