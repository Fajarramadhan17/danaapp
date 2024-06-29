import 'package:flutter/material.dart';
import 'package:dana_app/core.dart';
import '../view/topup_view.dart';

class TopupController extends State<TopupView> {
  static late TopupController instance;
  late TopupView view;

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
  List items = [
    {
      "image":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "21 May 2024 . 15:24",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Receive Money",
      "date": "22 May 2024 . 12:18",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "23 May 2024 . 16:22",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1560087637-bf797bc7796a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHdvbWVufGVufDB8fDB8fHww",
      "title": "TOP UP",
      "date": "24 May 2024 . 17:49",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Receive Money",
      "date": "25 May 2024 . 18:29",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "26 May 2024 . 19:22",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1561643241-9abf82d76a68?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Receive Money",
      "date": "27 May 2024 . 20:26",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1494354145959-25cb82edf23d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "28 May 2024 . 01:22",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "29 May 2024 . 02:20",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1584720223124-466ff369e7c2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHdvbWVufGVufDB8fDB8fHww",
      "title": "Send Money",
      "date": "30 May 2024 . 04:29",
      "amount": 25000,
    },
  ];
}
