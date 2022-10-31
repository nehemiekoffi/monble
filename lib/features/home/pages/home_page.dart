import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_text_styles.dart';
import 'package:monble/features/home/widgets/home_circle_button.dart';
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
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/images/app-logo.png',
          width: 100,
        ),
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
                  padding: const EdgeInsets.only(top: 32),
                  child: ClipPath(
                    clipper: OvalTopBorderClipper(),
                    child: Container(
                      height: double.infinity,
                      color: AppColors.bodyBackgroundColor,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeCircleButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_circle_outline,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(width: 64),
                            HomeCircleButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Column(
                          children: [
                            ListView.separated(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              shrinkWrap: true,
                              itemBuilder: (_, index) {
                                return TransactionItem();
                              },
                              separatorBuilder: (_, index) {
                                return Divider(
                                  height: 8,
                                  color: Colors.transparent,
                                );
                              },
                              itemCount: 5,
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
