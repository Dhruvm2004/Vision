import 'package:flutter/material.dart';
import 'package:vision/colorpallete/constants.dart';
// import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            portfolioCard(),
            const SizedBox(height: 20),
            aiAssistantCard(),
            const SizedBox(height: 20),
            recommendedForYou(),
            const SizedBox(height: 20),
            investmentGoals(),
            const SizedBox(height: 20),
            portfolioBreakdown(),
            const SizedBox(height: 20),
            todaysMarket(),
          ],
        ),
      ),
      // bottomNavigationBar: bottomNavBar(),
    );
  }

  // Portfolio Card
  Widget portfolioCard() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Portfolio Value',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                const Text(
                  '\$124,567.89',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '+5.2% Today',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // AI Assistant Card
  Widget aiAssistantCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 10),
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.chat_bubble_outline, color: appcolors.blue),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              '“Based on your portfolio, I suggest diversifying into emerging market ETFs...”',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  // Recommended for You
  Widget recommendedForYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recommended for You',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Container(
          height: 120,
          child: ListView(
            
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              investmentCard('VOOG', '\$420.08', '+1.2%', 'Vanguard S&P 500'),
              const SizedBox(width: 12),
              investmentCard('ARKK', '\$39.12', '+1.1%', 'ARK Innovation'),
              const SizedBox(width: 12),
              investmentCard('ARKK', '\$39.12', '+1.1%', 'ARK Innovation'),
                            const SizedBox(width: 12),
              investmentCard('ARKK', '\$39.12', '+1.1%', 'ARK Innovation'),

              const SizedBox(width: 12),
              investmentCard('ARKK', '\$39.12', '+1.1%', 'ARK Innovation'),

              const SizedBox(width: 12),
              investmentCard('ARKK', '\$39.12', '+1.1%', 'ARK Innovation'),

          
            ],
          ),
        ),
      ],
    );
  }

  // Investment Card
  Widget investmentCard(String name, String price, String change, String desc) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200, blurRadius: 10),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(price, style: const TextStyle(fontSize: 16)),
            Text(change, style: const TextStyle(color: Colors.green)),
            const SizedBox(height: 8),
            Text(desc, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  // Investment Goals
  Widget investmentGoals() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your Investment Goals',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        goalRow('Retirement Fund', 1000000, 600000),
        goalRow('House Down Payment', 100000, 50000),
        goalRow('Emergency Fund', 25000, 18000),
      ],
    );
  }

  Widget goalRow(String title, double target, double current) {
    double progress = current / target;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 6),
        LinearProgressIndicator(
          value: progress,
          minHeight: 8,
          backgroundColor: Colors.grey.shade300,
          color: appcolors.blue,
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  // Portfolio Breakdown Pie Chart
  Widget portfolioBreakdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Portfolio Breakdown',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          // child: PieChart(
          //   PieChartData(
          //     sections: [
          //       // pieChartSection(60, Colors.blue, 'Stocks'),
          //       // pieChartSection(20, Colors.green, 'Bonds'),
          //       // pieChartSection(10, Colors.red, 'Crypto'),
          //       // pieChartSection(10, Colors.orange, 'Cash'),
          //     ],
          //   ),
          // ),
        ),
      ],
    );
  }

  // PieChartSectionData pieChartSection(double value, Color color, String title) {
  //   return PieChartSectionData(
  //     value: value,
  //     color: color,
  //     title: '${value.toInt()}%',
  //     radius: 50,
  //     titleStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  //   );
  // }

  // Today's Market
  Widget todaysMarket() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Today's Market",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        marketRow('S&P 500', 4587.64, '+0.45%'),
        marketRow('NASDAQ', 14308.62, '+0.35%'),
        marketRow('DOW', 35950.89, '+0.51%'),
      ],
    );
  }

  Widget marketRow(String name, double value, String change) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: const TextStyle(fontSize: 14)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value.toStringAsFixed(2),
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(change, style: const TextStyle(color: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }

}

