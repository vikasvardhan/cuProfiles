import 'package:cuprofiles/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class FinancialScorecard extends StatelessWidget {
  const FinancialScorecard({super.key});

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
          buildRow('12-Month Growth Rates', '03/31/25', 'right'),
          buildRow('Balance Sheet', '', 'left'),
          buildRow('Shares', '3.40%', 'right'),
          buildRow('Loans', '-1.24%', 'right'),
          buildRow('Assets', '2.94%', 'right'),
          buildRow('Capital', '4.27%', 'right'),
        ],
      ),
    );
  }

  Widget buildRow(String label, String value, align) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(style: BorderStyle.solid, color: Color(0xFFcdcdcd)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Text(
                value,
                textAlign: align == 'right' ? TextAlign.end : TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
