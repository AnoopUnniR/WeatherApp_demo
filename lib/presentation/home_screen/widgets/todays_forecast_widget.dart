import 'package:flutter/material.dart';
import 'package:weather_app_demo/domain/hive_adapters/hour/hour_type.dart';

class TodaysForcastList extends StatelessWidget {
  TodaysForcastList({super.key, required this.hourList})
      : hourNow = DateTime.now().hour,
        scrollController =
            ScrollController(initialScrollOffset: DateTime.now().hour * 80);

  final List<HourDbModel> hourList;
  final int hourNow;
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 110,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: hourList.length,
          itemBuilder: (context, index) {
            HourDbModel hour = hourList[index];
            String time = hour.time!.split(' ').last;
            return InkWell(
              onTap: () {
                scrollController.animateTo(DateTime.now().hour * 80,
                    duration: const Duration(seconds: 1), curve: Curves.linear);
              },
              child: SizedBox(
                width: 80,
                child: Column(
                  children: [
                    Text("${hour.tempC!.round().toString()}°"),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                NetworkImage("https:${hour.condition!.icon}"),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Text(time)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
