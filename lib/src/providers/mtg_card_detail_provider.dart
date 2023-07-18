import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg/src/models/mtg_card.dart';
import 'package:mtg/src/services/mtg_service.dart';

final mtgCardDetailProvider = FutureProvider.family<MtgCard, String>((ref, String id) async {
  return MtgService().retrieveCard(id);
});
