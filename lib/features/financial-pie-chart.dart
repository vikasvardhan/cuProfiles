import 'package:cuprofiles/constants/colors.dart';
import 'package:cuprofiles/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FinancialPieChart extends StatefulWidget {
  const FinancialPieChart({super.key});

  @override
  State<FinancialPieChart> createState() => _FinancialPieChartState();
}

class _FinancialPieChartState extends State<FinancialPieChart> {
  final paiChartSelectionDatas = [
    PieChartSectionData(
      color: primaryColor,
      value: 25,
      showTitle: false,
      radius: 25,
    ),
    PieChartSectionData(
      color: const Color(0xFF26E5FF),
      value: 20,
      showTitle: false,
      radius: 22,
    ),
    PieChartSectionData(
      color: const Color(0xFFFFCF26),
      value: 10,
      showTitle: false,
      radius: 19,
    ),
    PieChartSectionData(
      color: const Color(0xFFEE2727),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      color: primaryColor.withValues(alpha: 0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Financial Scorecard",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 70,
                    startDegreeOffset: -90,
                    sections: paiChartSelectionDatas,
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        "70%",
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              height: 0.5,
                            ),
                      ),
                      const SizedBox(height: 8),
                      const Text("of 100%"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
