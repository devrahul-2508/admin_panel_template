import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_admin_template/utils/responsive.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Constants.cardbgColor),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Statistics",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Constants.primaryBlueColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Earnings"),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Constants.secondaryBlueColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Spendings"),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Constants.bgGreyColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text("Weekyly"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.filter_list,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Constants.primaryBlueColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Earnings"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Constants.secondaryBlueColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Spendings"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Constants.bgGreyColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text("Weekyly"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.filter_list,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
              ],
            ),
            if (!Responsive.isMobile(context))
              SizedBox(
                height: 40,
              )
            else
              SizedBox(height: 10),
            SizedBox(
              height: (Responsive.isMobile(context)) ? 230 : 250,
              width: 650,
              child: BarChart(
                BarChartData(
                  titlesData: titlesData1,
                  gridData: FlGridData(
                    show: true, // Set this to true to display grid lines
                    verticalInterval: 200, // Adjust this value as needed
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color:
                            const Color(0xff37434d), // Color of the grid line
                        strokeWidth: 1, // Adjust the width as needed
                      );
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                            toY: 5,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 8,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                            toY: 10,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 5,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                            toY: 4,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 7,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                            toY: 4,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 7,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                            toY: 4,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 7,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                            toY: 4,
                            color: Constants.primaryBlueColor,
                            width: 25),
                        BarChartRodData(
                            toY: 7,
                            color: Constants.secondaryBlueColor,
                            width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(sideTitles: leftTitles),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 8,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('JAN', style: style);
        break;
      case 1:
        text = const Text('FEB', style: style);
        break;
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 3:
        text = const Text('APR', style: style);
        break;
      case 4:
        text = const Text('MAY', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;

      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get leftTitles => SideTitles(
        showTitles: true,
        reservedSize: 10,
        interval: 2,
        getTitlesWidget: leftTitleWidgets,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 8,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('0', style: style);
        break;
      case 2:
        text = const Text('200', style: style);
        break;
      case 4:
        text = const Text('400', style: style);
        break;
      case 6:
        text = const Text('600', style: style);
        break;
      case 8:
        text = const Text('800', style: style);
        break;
      case 10:
        text = const Text('1000', style: style);
        break;

      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }
}
