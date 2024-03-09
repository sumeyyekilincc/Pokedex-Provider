import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/constans/constants.dart';
import 'package:pokedex/core/extentions/extentions.dart';
import 'package:pokedex/ui/widgets/dialogs.dart';
import '../../../core/models/all_pokemons_model.dart';
import 'package:http/http.dart' as http;

class VMAllPokemons extends ChangeNotifier {
  AllPokes _allPokeModel = AllPokes();
  AllPokes? get allPokeModal => _allPokeModel;
  bool isBusy = false;
  List<String> types = [];

  VMAllPokemons(BuildContext context) {
    init(context);
  }

  init(BuildContext context) {
    fetchAllPoke(context);
  }

  Future<void> fetchAllPoke(BuildContext context) async {
    isBusy = true;
    notifyListeners();

    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.hasInternetConnection) {
      try {
        var response = await http.get(
          Uri.parse(ApiEndpoints.allPoke),
        );
        if (response.statusCode == 200) {
          var parsed = json.decode(response.body);

          _allPokeModel = AllPokes.fromJson(parsed);
        }
      } catch (e) {
        print(e);
      }
    } else {
      getDialogNewtworkConnectionFailed(context);
    }
    isBusy = false;
    notifyListeners();
  }
}
