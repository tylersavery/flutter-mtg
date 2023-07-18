import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mtg/src/components/mtg_card_list_tile.dart';
import 'package:mtg/src/models/mtg_card.dart';
import 'package:mtg/src/providers/mtg_card_list_provider.dart';

class MtgCardList extends StatelessWidget {
  const MtgCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final provider = ref.read(mtgCardListProvider.notifier);

        return PagedListView<int, MtgCard>(
          pagingController: provider.pagingController,
          builderDelegate: PagedChildBuilderDelegate<MtgCard>(itemBuilder: (context, card, index) {
            return MtgCardListTile(card);
          }),
        );
      },
    );
  }
}
