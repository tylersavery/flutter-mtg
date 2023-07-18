import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtg/src/components/mtg_card_list.dart';

@RoutePage()
class MtgCardListScreen extends StatelessWidget {
  const MtgCardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MTG"),
      ),
      body: const MtgCardList(),
    );
  }
}
