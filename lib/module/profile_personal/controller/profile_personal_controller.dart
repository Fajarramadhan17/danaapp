import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/profile_personal_view.dart';

class ProfilePersonalController extends State<ProfilePersonalView> {
  static late ProfilePersonalController instance;
  late ProfilePersonalView view;

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