import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';

class ComplaintsChart extends StatelessWidget {
  const ComplaintsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: context.screenHeight * 0.32,
          width: context.screenWidth * 0.26,
          child: LineChart(
            LineChartData(
              minY: 0,
              maxY: 60,
              gridData: FlGridData(show: true),
              borderData: FlBorderData(show: true),
              titlesData: FlTitlesData(
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: context.screenHeight * 0.04,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, _) {
                      if (value % 1 != 0) {
                        return const SizedBox.shrink();
                      }
                      switch (value.toInt()) {
                        case 0:
                          return const Text('الأحد');
                        case 1:
                          return const Text('الاثنين');
                        case 2:
                          return const Text('الثلاثاء');
                        case 3:
                          return const Text('الأربعاء');
                        case 4:
                          return const Text('الخميس');
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                  ),
                ),
              ),
              lineBarsData: [
                _line(
                  spots: const [
                    FlSpot(0, 44),
                    FlSpot(1, 50),
                    FlSpot(2, 48),
                    FlSpot(3, 52),
                    FlSpot(4, 55),
                  ],
                  color: ColorConstant.LightPetroleum,
                ),
                _line(
                  spots: const [
                    FlSpot(0, 20),
                    FlSpot(1, 25),
                    FlSpot(2, 22),
                    FlSpot(3, 28),
                    FlSpot(4, 30),
                  ],
                  color: ColorConstant.green,
                ),
                _line(
                  spots: const [
                    FlSpot(0, 10),
                    FlSpot(1, 12),
                    FlSpot(2, 15),
                    FlSpot(3, 13),
                    FlSpot(4, 14),
                  ],
                  color: ColorConstant.Red,
                ),
                _line(
                  spots: const [
                    FlSpot(0, 14),
                    FlSpot(1, 13),
                    FlSpot(2, 11),
                    FlSpot(3, 11),
                    FlSpot(4, 11),
                  ],
                  color: ColorConstant.Amber,
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
            _legendItem(context, ColorConstant.LightPetroleum, "الكلية"),
            _legendItem(context, ColorConstant.green, "المنجزة"),
            _legendItem(context, ColorConstant.Red, "المرفوضة"),
            _legendItem(context, ColorConstant.Amber, "المنتظرة"),
          ],
        ),
      ],
    );
  }

  LineChartBarData _line({required List<FlSpot> spots, required Color color}) {
    return LineChartBarData(
      spots: spots,
      isCurved: false,
      barWidth: 3,
      color: color,
      dotData: FlDotData(show: true),
      belowBarData: BarAreaData(show: false),
    );
  }

  Widget _legendItem(BuildContext context, Color color, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.screenHeight * 0.015, // بدل 12
          height: context.screenHeight * 0.015,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: context.screenHeight * 0.008), // بدل 6
        Text(text, style: TextStyle(fontSize: context.screenHeight * 0.015)),
      ],
    );
  }
}
