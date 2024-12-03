import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(index: controller.selectedIndex, children: [
          DashboardView(),
          TopupView(),
          ProfilePersonalView(),
          ProfileView(),
        ]),
        floatingActionButton: Transform.translate(
          offset: Offset(0, 10),
          child: Transform.scale(
            scale: 1.2,
            child: FloatingActionButton(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code,
                    size: 32.0,
                  ),
                  Text(
                    "pay",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                //
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_giftcard,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: "Aktivitas",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: "Dompet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle,
              ),
              label: "Saya",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
