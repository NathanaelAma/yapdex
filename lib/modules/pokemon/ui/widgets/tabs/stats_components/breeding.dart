import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class BreedingSection extends ConsumerWidget {
  const BreedingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;

    return Center(
        child: Text(AppLocalizations.of(context)!.detailBreedingLabel,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: PokemonTypeColors.typeColors[type],
                )));
  }
}
