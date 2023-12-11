import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/bloc/currency_cubit.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/bloc/currency_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/strings.dart';
import '../../domain/entity/currency_model.dart';
import '../components/currency_list_widgets.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  CurrencyModel? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Column( // used column to prevent show list in the center of expanded
                  children: [
                    buildCurrencyList()
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: DesktopDetailItem(item: selectedItem)))
          ],
        ),
      ),
    );
  }

  Widget buildCurrencyList() {
    return Expanded(
      child: BlocConsumer<CurrencyCubit, CurrencyState>(
        builder: (context, state) {
          if (state is CurrencyLoading) {
            return const GridWaitingShimmer(crossAxisCount: 4);
          } else if (state is CurrencyLoaded) {
            return state.result.isEmpty
                ? buildNoResultText()
                : buildCurrencyGridView(state);
          } else if (state is CurrencyError) {
            return const SizedBox.shrink();
          } else {
            return const SizedBox.shrink();
          }
        },
        listener: (BuildContext context, CurrencyState state) {},
      ),
    );
  }

  Widget buildCurrencyGridView(CurrencyLoaded state) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: state.result.length,
        itemBuilder: (context, index) {
          return GridCurrencyItem(
              item: state.result[index],
              moreCallback: () {
                setState(() {
                  selectedItem = state.result[index];
                });
              });
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: (1 / 1),
        ));
  }

  Widget buildNoResultText() {
    return const Center(
        child: Text(
      AppStrings.noResult,
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ));
  }
}
