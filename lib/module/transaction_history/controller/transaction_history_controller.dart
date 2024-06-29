import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/transaction_history_view.dart';

class TransactionHistoryController extends State<TransactionHistoryView> {
  static late TransactionHistoryController instance;
  late TransactionHistoryView view;

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
