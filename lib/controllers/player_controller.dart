import 'package:flutter/material.dart';
import '../models/player.dart';
import '../repositories/player_repository.dart';

class PlayerController extends ChangeNotifier {
  bool loading = false;
  List<Players> players = [];
  dynamic exception;

  Future fetchPlayers() async {
    if (!loading) {
      loading = true;
      exception = null;
      notifyListeners();
    }
    try {
      players = [];
      List<Players> results = await PlayerRepository.getPlayers();

      players.addAll(results);
    } catch (e) {
      rethrow;
    }
    loading = false;
    notifyListeners();
  }
}
