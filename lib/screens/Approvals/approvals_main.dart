import 'package:flutter/material.dart';

import '../../constants.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding),
            Text(
              "Approvals",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: defaultPadding),
            Text(
              "Behavioural Pattern of Users",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: defaultPadding),

            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
