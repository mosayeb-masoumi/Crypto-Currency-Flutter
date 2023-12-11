import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/components/currency_list_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../di.dart';
import '../bloc/currency_cubit.dart';
import 'screen_list_export.dart';

class CurrencyListPage extends StatelessWidget {
  const CurrencyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CurrencyCubit(sl())),
        // here we can add other BlocProviders
      ],
      child: const ICurrencyListPage(),
    );
  }
}

class ICurrencyListPage extends StatefulWidget {
  const ICurrencyListPage({super.key});

  @override
  State<ICurrencyListPage> createState() => _ICurrencyListPageState();
}

class _ICurrencyListPageState extends State<ICurrencyListPage> {


  String lastQuery = "";

  @override
  void initState() {
    super.initState();

    context.read<CurrencyCubit>().getCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: RefreshIndicator(
          color: Colors.white24,
          backgroundColor: Colors.orange,
          onRefresh: () async {
            if(lastQuery.isEmpty){
              await context.read<CurrencyCubit>().getCurrencies();
            }else{
              await context.read<CurrencyCubit>().searchResult(lastQuery);
            }
          },

          // here we can switch between different screens(mobile/tablet/desktop)
          child: Column(
            children: [
              SearchTextField(callback: (String query) {
                lastQuery = query ;
                context.read<CurrencyCubit>().searchResult(query);
              }),
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return const MobileScreen();
                  } else if (constraints.maxWidth < 900) {
                    return const TabletScreen();
                  } else {
                    return const DesktopScreen();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
