import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mtg/src/models/mtg_card.dart';
import 'package:mtg/src/services/mtg_service.dart';

class MtgCardListProvider extends StateNotifier<List<MtgCard>> {
  final PagingController<int, MtgCard> pagingController = PagingController(firstPageKey: 1);

  MtgCardListProvider() : super([]) {
    pagingController.addPageRequestListener((page) {
      _fetchPage(page);
    });
  }

  Future<void> _fetchPage(int page) async {
    final cards = await MtgService().listCards(page);
    pagingController.appendPage(cards, page + 1);

    state = [...state, ...cards];
  }

  void refresh() {
    state = [];
    pagingController.refresh();
  }
}

final mtgCardListProvider = StateNotifierProvider<MtgCardListProvider, List<MtgCard>>(
  (ref) => MtgCardListProvider(),
);
