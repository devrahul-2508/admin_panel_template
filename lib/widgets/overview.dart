import 'package:flutter/material.dart';
import 'package:flutter_admin_template/models/overviewmodel.dart';
import 'package:flutter_admin_template/utils/responsive.dart';
import 'package:flutter_admin_template/widgets/overview_info_card.dart';

class OverView extends StatelessWidget {
  const OverView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
          SizedBox(height: 16.0),
          Responsive(
            mobile: OverviewInfoCardGridView(
              crossAxisCount: _size.width < 850 ? 2 : 4,
              childAspectRatio:
                  _size.width < 850 && _size.width > 350 ? 1.7 : 1.0,
            ),
            tablet: OverviewInfoCardGridView(
              childAspectRatio:
                  _size.width > 850 && _size.width < 1100 ? 1.5 : 2.0,
            ),
            desktop: OverviewInfoCardGridView(
              childAspectRatio: _size.width < 1400 ? 1.5 : 2.0,
            ),
          ),
        ],
      ),
    );
  }
}

class OverviewInfoCardGridView extends StatelessWidget {
  const OverviewInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoOverViews.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          OverviewInfoCard(overViewModel: demoOverViews[index]),
    );
  }
}
