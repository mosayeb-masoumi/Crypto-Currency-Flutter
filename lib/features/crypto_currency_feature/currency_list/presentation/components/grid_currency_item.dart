import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/components/circle_cached_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/strings.dart';
import '../../domain/entity/currency_model.dart';

class GridCurrencyItem extends StatelessWidget {
  final CurrencyModel item;
  final Function moreCallback;

  const GridCurrencyItem(
      {super.key, required this.moreCallback, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          CircleCachedImage(imageUrl: item.image, height: 80, width: 80),
          Expanded(
              child: Row(
            children: [
              buildInfo(),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: buildMoreButton(context))
            ],
          ))
        ],
      ),
    );
  }

  Widget buildInfo() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildFittedBox("${AppStrings.name}: ${item.name}", 13),
            buildFittedBox("${AppStrings.symbol}: ${item.symbol}", 13),
            buildFittedBox("${AppStrings.price}: ${item.currentPrice} (USD)", 15)
          ],
        ),
      ),
    );
  }

  Widget buildFittedBox(String text, double fontSize) {
    return FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontStyle: FontStyle.italic),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ));
  }

  Widget buildMoreButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, right: 5),
      child: TextButton(
        onPressed: () {
          moreCallback();
        },
        child: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            AppStrings.more,
            style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
