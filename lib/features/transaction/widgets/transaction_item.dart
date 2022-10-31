import 'package:flutter/material.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/core/constants/app_text_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        onTap: () {},
        leading: const CircleAvatar(
          backgroundColor: AppColors.lightGrey,
          child: Text(
            "🍔",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        title: const Text("Déjeuner"),
        subtitle: const Text("12 Oct. 2022 16:00"),
        trailing: const Text(
          "- 10 000 F",
          style: AppTextStyles.bodyTextSemiBold,
        ),
      ),
    );
  }
}
