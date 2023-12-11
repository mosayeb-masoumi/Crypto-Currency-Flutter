import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routes/app_route_constants.dart';
import '../../../../../core/utils/strings.dart';
import '../bloc/currency_cubit.dart';
import '../bloc/currency_state.dart';
import '../components/currency_list_widgets.dart';
import '../components/grid_currency_item.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: BlocConsumer<CurrencyCubit, CurrencyState>(
          builder: (BuildContext context, CurrencyState state) {
            if (state is CurrencyLoading) {
              return const GridWaitingShimmer(crossAxisCount: 3);
            } else if (state is CurrencyLoaded) {
              return state.result.isEmpty
                  ? buildNoResultText()
                  : buildCurrencyGridView(state);
            } else if (state is CurrencyError) {}
            return const SizedBox.shrink();
          },
          listener: (BuildContext context, CurrencyState state) {},
        ));
  }

  Widget buildNoResultText() {
    return const Center(
      child: Text(
        AppStrings.noResult,
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildCurrencyGridView(CurrencyLoaded state) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: state.result.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (1 / 1),
        ),
        itemBuilder: (context, index) {
          return GridCurrencyItem(
              item: state.result[index],
              moreCallback: () {
                GoRouter.of(context).pushNamed(
                  AppRouteConstants.detailRouteName,
                  extra: state.result[index], // to pass object
                  // extra: [item],
                );
              });
        });
  }
}
