import 'package:freezed_annotation/freezed_annotation.dart';

part 'mtg_card.freezed.dart';
part 'mtg_card.g.dart';

@freezed
class MtgCard with _$MtgCard {
  const MtgCard._();

  const factory MtgCard({
    required String id,
    required String name,
    required String type,
    required String rarity,
    String? imageUrl,
    String? text,
  }) = _MtgCard;

  factory MtgCard.fromJson(Map<String, Object?> json) => _$MtgCardFromJson(json);

  String get label {
    return "$type ($rarity)";
  }
}
