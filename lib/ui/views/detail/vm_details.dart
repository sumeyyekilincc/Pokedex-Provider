import 'package:flutter/foundation.dart';
import '../../../core/models/all_pokemons_model.dart';

class VMDetails extends ChangeNotifier {
  Pokemon _selectedPoke = Pokemon();
  Pokemon? get selectedPoke => _selectedPoke;
  bool isBusy = false;

  void ready(dynamic arguments) {
    if (arguments != null && arguments is List && arguments.isNotEmpty) {
      final pokemon = arguments[0] as Pokemon?;
      if (pokemon != null) {
        _selectedPoke = pokemon;
        notifyListeners();
      }
    }
  }
}
