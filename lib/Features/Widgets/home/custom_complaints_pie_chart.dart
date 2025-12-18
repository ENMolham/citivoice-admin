import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomComplaintsPieChart extends StatelessWidget {
  const CustomComplaintsPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: context.screenHeight * 0.3,
          width: context.screenWidth * 0.3,
          child: PieChart(
            PieChartData(
              centerSpaceRadius: context.screenHeight * 0.05,
              sectionsSpace: context.screenHeight * 0.008,
              sections: [
                _section(
                  context,
                  value: 44,
                  color: ColorConstant.LightPetroleum,
                  title: 'الكلية',
                ),
                _section(
                  context,
                  value: 22,
                  color: ColorConstant.green,
                  title: 'المنجزة',
                ),
                _section(
                  context,
                  value: 10,
                  color: ColorConstant.Red,
                  title: 'المرفوضة',
                ),
                _section(
                  context,
                  value: 12,
                  color: ColorConstant.Amber,
                  title: 'المنتظرة',
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: context.screenHeight * 0.015),

        Wrap(
          alignment: WrapAlignment.center,
          spacing: context.screenHeight * 0.015,
          runSpacing: context.screenHeight * 0.01,
          children: [
            _legendItem(context, ColorConstant.LightPetroleum, 'الكلية'),
            _legendItem(context, ColorConstant.green, 'المنجزة'),
            _legendItem(context, ColorConstant.Red, 'المرفوضة'),
            _legendItem(context, ColorConstant.Amber, 'المنتظرة'),
          ],
        ),
      ],
    );
  }

  PieChartSectionData _section(
    BuildContext context, {
    required double value,
    required Color color,
    required String title,
  }) {
    return PieChartSectionData(
      value: value,
      color: color,
      radius: context.screenHeight * 0.08,
      title: value.toInt().toString(),
      titleStyle: TextStyle(
        fontSize: context.screenHeight * 0.016,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _legendItem(BuildContext context, Color color, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.screenHeight * 0.015,
          height: context.screenHeight * 0.015,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: context.screenHeight * 0.008),
        Text(text, style: TextStyle(fontSize: context.screenHeight * 0.015)),
      ],
    );
  }
}
