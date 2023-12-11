import 'package:crypto_currency_project/core/routes/app_route_constants.dart';
import 'package:crypto_currency_project/core/utils/strings.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/components/circle_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entity/currency_model.dart';

class CurrencyItem extends StatelessWidget {
  final Function callBack;
  final CurrencyModel item;

  const CurrencyItem({super.key, required this.item, required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Center(
                child: CircleCachedImage(
                    imageUrl: item.image, height: 70.0, width: 70.0),
              )),
          Expanded(flex: 3, child: buildInfo()),
          Expanded(flex: 1, child: buildMoreButton(context)),
        ],
      ),
    );
  }

  Widget buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildInfoText("${AppStrings.name}: ${item.name}", 15),
        buildInfoText("${AppStrings.name}: ${item.symbol}", 13),
        buildInfoText("${AppStrings.name}: ${item.currentPrice} (USD)", 13)
      ],
    );
  }

  Widget buildInfoText(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontStyle: FontStyle.italic),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget buildMoreButton(BuildContext context) {
    return TextButton(
        onPressed: () {

          callBack();
          // GoRouter.of(context).pushNamed(
          //   AppRouteConstants.detailRouteName,
          //   extra: item, // to pass object
          //   // extra: [item],
          // );
        },
        child: const Text(
          AppStrings.more,
          style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
        ));
  }
}
