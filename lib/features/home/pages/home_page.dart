import 'package:flutter/material.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_text_styles.dart';
import 'package:monble/core/utils/navigate.dart';
import 'package:monble/features/transaction/pages/transaction_stats_page.dart';
import 'package:monble/features/transaction/widgets/transaction_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(1, 1),
              ),
            ]),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add_circle_outline_sharp,
                    size: 35,
                    color: Colors.green.shade300,
                  ),
                  const Text("Dépense"),
                ],
              ),
            ),
            const SizedBox(width: 64),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.remove_circle_outline,
                  size: 35,
                  color: Colors.red.shade400,
                ),
                const Text("Dépense"),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/images/app-logo.png',
          width: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigate.to(const TransactionStatsPage(), context);
            },
            icon: const Icon(Icons.bar_chart),
          )
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8),
            height: double.infinity,
            width: double.infinity,
            color: AppColors.primary,
            child: Column(
              children: [
                Text(
                  "Solde",
                  style: AppTextStyles.bodyText.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "1 000 000 F",
                  style: AppTextStyles.headingTextBlack.copyWith(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(
                    Icons.remove_red_eye,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.36,
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  color: AppColors.bodyBackgroundColor,
                ),
                Container(
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Column(
                          children: [
                            ListView.separated(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              shrinkWrap: true,
                              itemBuilder: (_, index) {
                                return const TransactionItem();
                              },
                              separatorBuilder: (_, index) {
                                return const Divider(
                                  height: 8,
                                  color: Colors.transparent,
                                );
                              },
                              itemCount: 6,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
