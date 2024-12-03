import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../controller/wallet_controller.dart';

class WalletView extends StatefulWidget {
  WalletView({Key? key}) : super(key: key);

  Widget build(context, WalletController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(12.0),
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
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHOOSE YOUR CATEGORY",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Builder(builder: (context) {
                      List categories = [
                        {
                          "label": "Breakfast",
                        },
                        {
                          "label": "Lunch",
                        },
                        {
                          "label": "Dinner",
                        },
                        {
                          "label": "Refreshment",
                        },
                        {
                          "label": "Snacks",
                        }
                      ];
                      return Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: List.generate(categories.length, (index) {
                          var item = categories[index];
                          bool selected = index == 0;
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  selected ? Color(0xfffc5d1e) : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  blurRadius: 24,
                                  offset: Offset(0, 11),
                                ),
                              ],
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[300]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: Text(
                              "${item["label"]}",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: selected ? Colors.white : null,
                              ),
                            ),
                          );
                        }),
                      );
                    }),
                  ],
                ),
              ),
              Container(
                height: 160.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
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
      ),
    );
  }

  @override
  State<WalletView> createState() => WalletController();
}
