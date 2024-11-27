import 'package:barbershop/data/models/bs_model.dart' as BarbershopModel;
import 'package:barbershop/data/repositories/data_bloc.dart';
import 'package:barbershop/presentation/blocs/data_state.dart';
import 'package:barbershop/presentation/widgets/statefull/bs_nrst_statefull.dart';
import 'package:barbershop/presentation/widgets/statefull/bs_statefull_home_card.dart';
import 'package:barbershop/presentation/widgets/stateless/bs_button.dart';
import 'package:barbershop/presentation/widgets/stateless/bs_most_recs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../stateless/bs_profile_bar.dart';
import '../stateless/bs_search_bar.dart';

class BarbershopStateBuilder extends StatelessWidget {
  const BarbershopStateBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BarbershopBloc, DataState>(
      builder: (context, state) {
        if (state is DataLoading) {
          return _buildLoadingState();
        } else if (state is DataLoaded) {
          return _buildLoadedState(state.dataModel);
        } else if (state is DataError) {
          return _buildErrorState(state.error);
        } else {
          return _buildWelcomeState();
        }
      },
    );
  }

  Widget _buildLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildWelcomeState() {
    return const Center(child: Text('Welcome to the Barbershop App'));
  }

  Widget _buildErrorState(String error) {
    return Center(child: Text('Error: $error'));
  }

  Widget _buildLoadedState_backup(
      BarbershopModel.BarbershopModel BarbershopModel) {
    return ListView(
      children: [
        _buildBanner(BarbershopModel.banner),
        ..._buildBarbershopList(BarbershopModel.nearestBarbershop),
      ],
    );
  }

  Widget _buildLoadedState(BarbershopModel.BarbershopModel dataModel) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Column(
              children: [
                const BarbershopProfileBar(),
                const SizedBox(height: 20),
                BarbershopStatefullHomeCard(banner: dataModel.banner),
                const SizedBox(height: 20),
                const BarbershopSearchBar(),
              ],
            ),
          ),
          const Text(
            'Nearest Babershop',
            style: TextStyle(
              color: Color(0xFF111827),
              fontSize: 18,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 400,
            child: BarbershopNeareastStatefull(
              barbershops: dataModel.nearestBarbershop,
            ),
          ),
          const SizedBox(height: 20),
          const BarbershopButton(),
          const BarbershopMostRecommended(),
        ],
      ),
    );
  }
}

Widget _buildBanner(BarbershopModel.Banner banner) {
  // Use the alias here
  return ListTile(
    title: Text('Banner: ${banner.buttonTitle}'),
    subtitle: Text(banner.image),
  );
}

List<Widget> _buildBarbershopList(
    List<BarbershopModel.Barbershop> barbershops) {
  // Use the alias here as well
  return barbershops.map((barbershop) {
    return ListTile(
      title: Text(barbershop.name),
      subtitle: Text(barbershop.locationWithDistance),
      trailing: Text('Rating: ${barbershop.reviewRate}'),
    );
  }).toList();
}
