import 'package:flutter/material.dart';

class TransactionStatsPage extends StatefulWidget {
  const TransactionStatsPage({super.key});

  @override
  State<TransactionStatsPage> createState() => _TransactionStatsPageState();
}

class _TransactionStatsPageState extends State<TransactionStatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statistiques"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "Janvier",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_sharp),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
