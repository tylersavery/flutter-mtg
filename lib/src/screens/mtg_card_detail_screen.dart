import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg/src/components/mtg_card_details.dart';
import 'package:mtg/src/providers/mtg_card_detail_provider.dart';

@RoutePage()
class MtgCardDetailScreen extends StatelessWidget {
  final String id;
  const MtgCardDetailScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MTG Card")),
      body: Consumer(builder: (context, ref, _) {
        final data = ref.watch(mtgCardDetailProvider(id));

        return data.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (e, _) => Center(
            child: Text("Error: $e"),
          ),
          data: (card) {
            return MtgCardDetails(card);
          },
        );
      }),
    );
  }
}
