import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/wallet_controller.dart';

class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  Widget build(context, WalletController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
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
  State<WalletView> createState() => WalletController();
}
