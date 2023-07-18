import 'package:dio/dio.dart';
import 'package:mtg/src/models/mtg_card.dart';

class MtgService {
  static const String baseUrl = "https://api.magicthegathering.io/v1";

  Future<dynamic> _get(String path, {int page = 1}) async {
    final url = "$baseUrl$path";
    final params = {'page': page};
    final response = await Dio().get(url, queryParameters: params);
    return response.data;
  }

  Future<List<MtgCard>> listCards(int page) async {
    final data = await _get('/cards', page: page);
    return data['cards'].map<MtgCard>((c) => MtgCard.fromJson(c)).toList();
  }

  Future<MtgCard> retrieveCard(String id) async {
    final data = await _get('/cards/$id');
    return MtgCard.fromJson(data['card']);
  }
}
