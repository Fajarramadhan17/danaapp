import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/transaction_hostory_in _progress_view.dart';

class TransactionHostoryInProgressController
    extends State<TransactionHostoryInProgressView> {
  static late TransactionHostoryInProgressController instance;
  late TransactionHostoryInProgressView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
