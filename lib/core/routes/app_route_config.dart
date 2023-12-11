
import 'package:crypto_currency_project/core/routes/error_screen.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_detail/presentation/detail_screen.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/entity/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/crypto_currency_feature/currency_list/presentation/screens/currency_list_page.dart';
import 'app_route_constants.dart';


/// The route configuration.
final GoRouter router = GoRouter(
    routes: <RouteBase>[
        GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
                return const CurrencyListPage();
            },
            routes: <RouteBase>[

                /****** pass query parameters *******/
                GoRoute(
                    name: AppRouteConstants.detailRouteName,
                    path: 'detail',
                    builder: (BuildContext context, GoRouterState state) {
                        CurrencyModel item = state.extra as CurrencyModel;
                        return DetailScreen(
                           item: item
                        );
                    },

                ),


            ],
        ),
    ],
    errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
    },
    // redirect: (context, state) {
    //   return MyAppRouteConstants.isLoggedIn ? "/about" : "/contact";
    // }
);

