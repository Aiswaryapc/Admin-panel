import 'package:admin/constants.dart';
import 'package:admin/screens/reports/components/header.dart';
import 'package:admin/screens/reports/components/report.dart';
import 'package:flutter/material.dart';

class ReportMainScreen extends StatelessWidget {
  const ReportMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      ReportFiles(),
                      SizedBox(height: defaultPadding),
                      ReportFiles(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
