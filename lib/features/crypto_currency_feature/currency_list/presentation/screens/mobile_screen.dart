import 'package:crypto_currency_project/core/utils/strings.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/bloc/currency_cubit.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/bloc/currency_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/app_route_constants.dart';
import '../components/currency_list_widgets.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: BlocConsumer<CurrencyCubit, CurrencyState>(
          builder: (BuildContext context, CurrencyState state) {
            if (state is CurrencyLoading) {
              return const ListWaitingShimmer();
            } else if (state is CurrencyLoaded) {
              return state.result.isEmpty
                  ? buildNoResultText()
                  : buildCurrencyListView(state);
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

  Widget buildCurrencyListView(CurrencyLoaded state) {
    return ListView.builder(
      itemCount: state.result.length,
      itemBuilder: (context, index) {

        return CurrencyItem(item: state.result[index], callBack: (){
          GoRouter.of(context).pushNamed(
            AppRouteConstants.detailRouteName,
            extra: state.result[index], // to pass object
            // extra: [item],
          );
        });
        // return CurrencyItem(item: state.result[index]){
        //
        // };
      },
    );
  }
}
