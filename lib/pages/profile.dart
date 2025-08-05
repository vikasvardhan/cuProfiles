import 'dart:io';

import 'package:cuprofiles/constants/colors.dart';
import 'package:cuprofiles/features/app-bar.dart';
import 'package:cuprofiles/features/financial-bar-chart.dart';
import 'package:cuprofiles/features/financial-pie-chart.dart';
import 'package:cuprofiles/features/financial-scorecard.dart';
import 'package:cuprofiles/features/financial-snapshot.dart';
import 'package:cuprofiles/features/profile-snapshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Item {
  bool isExpanded;
  final String header;
  final String body;

  Item({required this.isExpanded, required this.header, required this.body});
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileSnapshot(),
              FinancialSnapshot(),
              FinancialPieChart(),
              FinancialBarChart(),
              FinancialScorecard(),
            ],
          ),
        ),
      ),
    );
  }
}
