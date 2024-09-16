import 'package:dio_http/dio_http.dart';
import '../constants/constants.dart';
import '../middleware/network_interceptor.dart';
import '../models/player.dart';

class PlayerRepository {
  static Future<List<Players>> getPlayers() async {
    BaseOptions baseOptions = BaseOptions(
        baseUrl: Constants.baseURL,
        method: 'GET',
        connectTimeout: Constants.timeOut,
        responseType: ResponseType.json);
    Dio dio = Dio(baseOptions);
    dio.interceptors.add(NetworkInterceptor(dio));

    try {
      final response =
          await dio.request('players?league=39&season=2022&team=35');

      List<Players> players = [];
      for (Map<String, dynamic> user in response.data['data']) {
        players.add(Players.fromJson(user));
      }

      print("aajaajjajajakkakkakak: $response");
      return players;
    } catch (e, s) {
      print("aajaajjajajakkakkakak: $e");
      print("aajaajjajajakkakkakak: $s");
      rethrow;
    }
  }
}
