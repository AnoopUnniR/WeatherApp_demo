import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.cityName});
  final String cityName;
  @override
  Widget build(BuildContext context) {
    String date = DateFormat("yMMMMd").format(DateTime.now());
    return Container(
      margin: const EdgeInsets.only(left: 16, bottom: 20),
      alignment: Alignment.topLeft,
      child: Text(
        date,
        style: const TextStyle(fontSize: 15, color: Colors.grey),
      ),
    );
  }

  // void getAddress(lat, lon) async {
  //   List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
  //   Placemark place = placemark[0];
  // }
}
