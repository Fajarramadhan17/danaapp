import 'package:dana_app/core.dart';
import 'package:dana_app/module/dashboard/widget/dashboard_search_field.dart';
import 'package:dana_app/module/dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class DashboardMenuIcons extends StatelessWidget {
  const DashboardMenuIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          DashboardSearchField(),
          const SizedBox(
            height: 12.0,
          ),
          const Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Icon(
                      Icons.qr_code_scanner,
                      size: 32.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Scan",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(
                      Icons.wallet_outlined,
                      size: 32.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Top up",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(
                      Icons.send_outlined,
                      size: 32.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Icon(
                      Icons.wallet_membership_outlined,
                      size: 32.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Request",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
