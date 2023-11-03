import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';

class Savings extends StatefulWidget {
  Savings({super.key});

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  double _studiovalue = 500.0;

  double _educationvalue = 5000.0;

  double _healthcarevalue = 1000.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Constants.cardbgColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Total Savings",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "\$984.50",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "8.2%",
                  style: TextStyle(color: Colors.green, fontSize: 8),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "+53.2",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " than last month",
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1.0,
          ),
          SizedBox(
            height: 10,
          ),
          buildRentRangeWidget(),
          buildSellingRangeWidget(),
          buildAreaRangeWidget()
        ]),
      ),
    );
  }

  Widget buildRentRangeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Dream Studio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: _studiovalue.round().toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "/750",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4.0,
            overlayColor: Colors.blue.withOpacity(0.3),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
          ),
          child: Slider(
            min: 0.0,
            max: 750,
            value: _studiovalue,
            label: 'Rs ${_studiovalue.round()}',
            divisions: 20,
            onChanged: (newValues) {
              setState(() {
                _studiovalue = newValues;
              });
            },
          ),
        )
      ],
    );
  }

  Widget buildSellingRangeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Education",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: _educationvalue.round().toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "/10000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4.0,
            overlayColor: Colors.blue.withOpacity(0.3),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
          ),
          child: Slider(
            min: 0.0,
            max: 10000,
            value: _educationvalue,
            label: 'Rs ${_educationvalue.round()}',
            divisions: 10,
            onChanged: (newValues) {
              setState(() {
                _educationvalue = newValues;
              });
            },
          ),
        )
      ],
    );
  }

  Widget buildAreaRangeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Health Care",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: _healthcarevalue.round().toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "/10000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4.0,
            overlayColor: Colors.blue.withOpacity(0.3),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
          ),
          child: Slider(
            min: 0.0,
            max: 10000,
            value: _healthcarevalue,
            label: 'Rs ${_healthcarevalue.round()}',
            divisions: 10,
            onChanged: (newValues) {
              setState(() {
                _healthcarevalue = newValues;
              });
            },
          ),
        )
      ],
    );
  }
}
