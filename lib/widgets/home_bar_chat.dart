import 'package:fast_charts/fast_charts.dart' as fastCharts;
import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';

class MonthlyBarChart extends StatelessWidget {
  const MonthlyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    final data = {
      'Mon': {'income': 60, 'expense': 574, 'purchase': 784},
      'Tue': {'income': 65, 'expense': 954, 'purchase': 354},
      'Wed': {'income': 65, 'expense': 954, 'purchase': 354},
      'Thu': {'income': 541, 'expense': 245, 'purchase': 854},
      'Fri': {'income': 124, 'expense': 695, 'purchase': 354},
      'Sat': {'income': 887, 'expense': 264, 'purchase': 654},
      'Sun': {'income': 365, 'expense': 645, 'purchase': 989},
      // Add more weeks with income and expense data
    };

    final expenseSeries = fastCharts.Series(
      data: data,
      measureAccessor: (value) => (value['expense'] as int).toDouble(),
      colorAccessor: (domain, value) => expenseRedColor,
    );
    final incomeSeries = fastCharts.Series(
      data: data,
      measureAccessor: (value) => (value['income'] as int).toDouble(),
      colorAccessor: (domain, value) => saleGreenColor,
    );

    final purchaseSeries = fastCharts.Series(
      data: data,
      measureAccessor: (value) => (value['purchase'] as int).toDouble(),
      colorAccessor: (domain, value) => darkBlueColor,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: fastCharts.BarChart(
        data: [incomeSeries, expenseSeries, purchaseSeries],
        measureFormatter: (value) {
          if (value is int && value >= 1000) {
            return '${(value / 1000).toStringAsFixed(0)}k';
          }
          return value.toString();
        },

        showZeroValues: false, // Show bars even with zero values
        inverted: false, // Adjust chart orientation

        // Styling properties
        mainAxisTextStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        crossAxisTextStyle: const TextStyle(fontSize: 12),
        axisColor: darkGrayColor,
        axisThickness: 1.5,
        guideLinesColor: hintLightGrayColor,
        guideLinesThickness: 0.5,
        mainAxisLabelsOffset: 5,
        crossAxisLabelsOffset: 4.0,
        // crossAxisWidth: 10,
        // mainAxisWidth: 50,
        showMainAxisLine: true,
        showCrossAxisLine: true,
        minTickSpacing: 20.0,
        groupSpacing: 10,
        // barSpacing: 4.0,
        barPadding: 4.0,
        radius: const Radius.circular(5),
        // Animation properties
        animationDuration: const Duration(milliseconds: 500),
        animationCurve: Curves.easeOut,
        // Additional configuration options such as axis labels, titles, etc.
      ),
    );
  }
}
