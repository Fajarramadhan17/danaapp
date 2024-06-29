import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/request_money_view.dart';

class RequestMoneyController extends State<RequestMoneyView> {
  static late RequestMoneyController instance;
  late RequestMoneyView view;

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
