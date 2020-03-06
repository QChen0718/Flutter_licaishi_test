import 'package:flutter/material.dart';
import 'package:flutter_test2/widget/statistics_header.dart';
import 'package:flutter_test2/widget/statistics_list.dart';

class StatisticsPage extends StatefulWidget{
  @override
  _StatisticsPageState createState() => _StatisticsPageState();

}
class _StatisticsPageState extends State<StatisticsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: <Widget>[
          StaticsHeader(),
          Expanded(
              child: StatisticsList()
          )

        ],
    );
  }

}