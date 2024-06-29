import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import '../controller/topup_controller.dart';

class TopupView extends StatefulWidget {
  TopupView({Key? key}) : super(key: key);

  Widget build(context, TopupController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Aktivitas Transaksi",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      blurRadius: 1.0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'cari isi saldo',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey[200],
                    ),
                    suffixIcon: Container(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.sort,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.grey[300],
                child: const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bulan ini",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "-Rp.2.122.550",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 24.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: controller.items.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.items[index];
                  var formatter = NumberFormat.decimalPattern();
                  print(item["amount"]);
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            item["image"],
                          ),
                        ),
                        title: Text(item["title"]),
                        subtitle: Text(
                          item["date"],
                          style: const TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        trailing: Text(
                          "Rp${formatter.format(double.parse(item["amount"].toString()))}",
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TopupView> createState() => TopupController();
}
