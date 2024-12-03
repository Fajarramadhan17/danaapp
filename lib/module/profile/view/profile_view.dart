import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 300.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 42.0,
                              backgroundImage: NetworkImage(
                                "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWVufGVufDB8fDB8fHww",
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                color: Colors.white.withOpacity(0.4),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.developer_board,
                                    size: 16.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "PREMIUM",
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
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MUHAMMAD FAJAR RAMADHAN",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "0882****7324",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              SizedBox(
                                height: 30,
                                child: OutlinedButton.icon(
                                  icon: Icon(
                                    Icons.qr_code_scanner,
                                    size: 16.0,
                                  ),
                                  label: Text(
                                    "SHOW MY QR",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    shape: StadiumBorder(),
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 20,
              right: 20,
              bottom: -20,
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Activate UZI Protecyion now to stay Protected",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  SizedBox(
                                    height: 8,
                                    child: LinearProgressIndicator(),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Make your Emoney account more secure!",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              MdiIcons.chevronRight,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Builder(builder: (context) {
                                List menuitems = [
                                  {
                                    "icon ": MdiIcons.wallet,
                                    "color": Colors.blue,
                                    "label": "balance ",
                                    "Value": "Rp55.000",
                                  },
                                  {
                                    "icon ": MdiIcons.gold,
                                    "color": Colors.orange,
                                    "label": "Activate Gold ",
                                    "Value": "Let's activatel",
                                  },
                                  {
                                    "icon ": MdiIcons.target,
                                    "color": Colors.red,
                                    "label": "daily targets ",
                                    "Value": "Earn more Points!",
                                  },
                                  {
                                    "icon ": MdiIcons.chartLine,
                                    "color": Colors.blue,
                                    "label": "M-Investment",
                                    "Value": "3% profile/month",
                                  },
                                ];
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 6,
                                    crossAxisSpacing: 6,
                                  ),
                                  itemCount: menuitems.length,
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = menuitems[index];
                                    return InkWell(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: FittedBox(
                                              child: Icon(
                                                item["icon"],
                                                size: 24.0,
                                                color: item["color"],
                                              ),
                                            ),
                                          ),
                                          Text(
                                            item["label"],
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["Value"],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.green[100],
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green[400],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "income",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4.0,
                                              ),
                                              Text(
                                                "Rp.14.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.yellow[100],
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.yellow[600],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Expense",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4.0,
                                              ),
                                              Text(
                                                "Rp.14.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Builder(builder: (context) {
                          List menuitems = [
                            {
                              "icon": Icons.check,
                              "color": Colors.green,
                              "title": "Check In and get rewards",
                              "page": WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBox,
                              "color": Colors.red,
                              "title": "My bills",
                              "page": WalletView(),
                            },
                            {
                              "icon": Icons.wallet,
                              "color": Colors.blue,
                              "title": "Wallet",
                              "page": WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "TOS",
                              "page": WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "Privacy Policy",
                              "page": WalletView(),
                            },
                            {
                              "icon": MdiIcons.listBoxOutline,
                              "color": Colors.grey,
                              "title": "Help",
                              "page": WalletView(),
                            },
                          ];
                          return ListView.builder(
                            itemCount: menuitems.length,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuitems[index];
                              return ListTile(
                                onTap: () => Get.to(item["page"]),
                                leading: Icon(
                                  item["icon"],
                                  size: 24.0,
                                  color: item["color"],
                                ),
                                contentPadding: EdgeInsets.all(0.0),
                                minLeadingWidth: 0.0,
                                title: Text(item["title"]),
                                trailing: Icon(
                                  Icons.chevron_right,
                                  size: 24.0,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
