import 'package:flutter/material.dart';

class DashboardSearchField extends StatelessWidget {
  const DashboardSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Looking for something',
          hintStyle: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[400],
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blueGrey[400],
          ),
        ),
      ),
    );
  }
}
