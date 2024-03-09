import 'package:pokedex/ui/views/dashboard/vm_all_pokemons.dart';
import 'package:pokedex/ui/views/detail/vm_details.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


List<SingleChildWidget> providers = [
   ChangeNotifierProvider(
        create: (context) => VMAllPokemons(context),
      ),
      ChangeNotifierProvider(
        create: (context) => VMDetails(),
      ),
];