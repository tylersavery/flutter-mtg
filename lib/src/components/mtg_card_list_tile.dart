import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mtg/src/models/mtg_card.dart';
import 'package:mtg/src/router.dart';

class MtgCardListTile extends StatelessWidget {
  final MtgCard card;
  const MtgCardListTile(this.card, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(card.name),
      subtitle: Text(card.label),
      onTap: () {
        AutoRouter.of(context).push(MtgCardDetailRoute(id: card.id));
      },
    );
  }
}
