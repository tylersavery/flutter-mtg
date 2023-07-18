import 'package:flutter/material.dart';
import 'package:mtg/src/models/mtg_card.dart';

class MtgCardDetails extends StatelessWidget {
  final MtgCard card;
  const MtgCardDetails(this.card, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              card.name,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            if (card.imageUrl != null) Image.network(card.imageUrl!),
            if (card.text != null)
              Text(
                card.text!,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }
}
