import 'package:dana_app/module/dashboard/widget/dashboard_menu_icons.dart';
import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import 'package:flutter/widgets.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(
              Icons.wallet,
              size: 24.0,
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "Rp",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "12.500",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.chevron_left_rounded,
              size: 24.0,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.email_outlined,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 100,
              child: Column(
                children: [
                  DashboardMenuIcons(),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/6165/6165633.png",
                              width: 36.0,
                              height: 36.0,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shoppe 10.10",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Diskon s/d 50%",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 32,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                onPressed: () {},
                                child: Text(
                                  "SERBU",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        // GridView.builder(
                        //   padding: EdgeInsets.zero,
                        //   gridDelegate:
                        //       SliverGridDelegateWithFixedCrossAxisCount(
                        //     childAspectRatio: 1.0,
                        //     crossAxisCount: 4,
                        //     mainAxisSpacing: 6,
                        //     crossAxisSpacing: 6,
                        //   ),
                        //   itemCount: 8,
                        //   shrinkWrap: true,
                        //   physics: ScrollPhysics(),
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return Container(
                        //       color: Colors.pink,
                        //       child: Column(
                        //         children: [
                        //           Image.network(
                        //             "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                        //             width: 32.0,
                        //             height: 32.0,
                        //             fit: BoxFit.cover,
                        //           ),
                        //           Text(
                        //             "text",
                        //             style: TextStyle(
                        //               fontSize: 12.0,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     );
                        //   },
                        // ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Builder(builder: (context) {
                          List menuitems = [
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/11083/11083341.png",
                              "label": "pulsa &\nData",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/324/324113.png",
                              "label": "Google\nPlay Story",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/744/744922.png",
                              "label": "User\nRewards",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/3258/3258446.png",
                              "label": "Games \nWallet",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/4320/4320371.png",
                              "label": "BPJS \nKesehatan",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/2596/2596697.png",
                              "label": "Super &\nDeals",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/6489/6489834.png",
                              "label": "Electricity &\nBills",
                            },
                            {
                              "image":
                                  "https://cdn-icons-png.flaticon.com/128/9451/9451236.png",
                              "label": "View &\nAll",
                            }
                          ];
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.0,
                              crossAxisCount: 4,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 6,
                            ),
                            itemCount: 8,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuitems[index];
                              return InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image.network(
                                        item["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      item["label"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Feed",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Find out what your friend are up to!",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                  side: const BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "EXPLORE",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1664575601786-b00156752b61?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWFufGVufDB8fDB8fHww",
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                        fontSize: 12.0,
                                      ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: 'Your Friend',
                                    ),
                                    TextSpan(
                                      text: 'Just received Mobile Credit from',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: 'Emoney Surpize',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 160.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-hjn2uZgJzEjBaFEUunEPGgA5h6Zc9D6k3g&s",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
