import 'package:flutter/material.dart';
import 'package:flutter_admin_template/models/overviewmodel.dart';
import 'package:flutter_admin_template/utils/constants.dart';

class OverviewInfoCard extends StatelessWidget {
  const OverviewInfoCard({
    Key? key,
    required this.overViewModel,
  }) : super(key: key);

  final OverViewModel overViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Constants.cardbgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              overViewModel.icon,
              SizedBox(
                width: 8,
              ),
              Text(
                overViewModel.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              Text(
                overViewModel.amount,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                    color: overViewModel.color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  overViewModel.percentage,
                  style: TextStyle(color: overViewModel.color, fontSize: 8),
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                overViewModel.difference,
                style: TextStyle(
                    color: overViewModel.color,
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
          )
        ],
      ),
    );
  }
}
