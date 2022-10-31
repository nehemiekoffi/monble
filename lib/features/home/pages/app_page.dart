import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/features/home/pages/home_page.dart';
import 'package:monble/features/transaction/pages/transaction_stats_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int navigationBarPagesIndex = 0;
  List<Widget> navigationBarPages = [
    const HomePage(),
    const TransactionStatsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(1, 1),
          )
        ],
        selectedItemColor: AppColors.primary,
        onTap: (index) {
          setState(() {
            navigationBarPagesIndex = index;
          });
        },
        currentIndex: navigationBarPagesIndex,
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.bar_chart_rounded),
          ),
        ],
      ),
      body: navigationBarPages.elementAt(navigationBarPagesIndex),
    );
  }
}
