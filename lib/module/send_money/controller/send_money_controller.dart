import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/send_money_view.dart';

class SendMoneyController extends State<SendMoneyView> {
  static late SendMoneyController instance;
  late SendMoneyView view;

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
