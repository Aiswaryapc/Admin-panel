import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/User_behaviour.dart';
import '../../responsive.dart';
import '../dashboard/components/my_fields.dart';
import 'analytics_card.dart';



class BehaviouralCardGridView extends StatelessWidget {
  const BehaviouralCardGridView({
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
      itemCount: demoBehaviour.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => AnalyticsCard(info: demoBehaviour[index]),
    );
  }
}
