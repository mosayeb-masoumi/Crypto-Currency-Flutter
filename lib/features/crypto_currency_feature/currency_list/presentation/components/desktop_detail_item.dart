import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/entity/currency_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/strings.dart';
import 'currency_list_widgets.dart';
import 'package:intl/intl.dart';

class DesktopDetailItem extends StatelessWidget {
  final CurrencyModel? item;

  const DesktopDetailItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.all(10),
      child: item != null
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: Center(
                  child: CircleCachedImage(
                      imageUrl: item!.image, height: 120, width: 120))),
          buildText(AppStrings.name, item!.name),
          buildText(AppStrings.symbol, item!.symbol),
          buildText(AppStrings.currentPriceUSD, item!.currentPrice),
          buildText(AppStrings.marketCap, item!.marketCap),
          buildText(AppStrings.marketCapRank, item!.marketCapRank),
          buildText(AppStrings.totalVolume, item!.totalVolume),
          buildText(
              AppStrings.marketCapChange24h, item!.marketCapChange24h),
          buildLastUpdateText(item!.lastUpdated)
        ],
      )
          : Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: const Text(
            AppStrings.clickOnMore,
            maxLines: 2,
          )),
    );
  }

  Widget buildText(String title, var value) {
    return Text("$title: $value",
        maxLines: 1,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontStyle: FontStyle.italic,
            overflow: TextOverflow.ellipsis));
  }

  Widget buildLastUpdateText(String lastUpdated) {
    DateTime dateTime = DateTime.parse(lastUpdated);
    String formattedDate = DateFormat(AppStrings.dateFormat).format(dateTime);
    String formattedTime = DateFormat(AppStrings.timeFormat).format(dateTime);

    return Text(
      maxLines: 1,
      "${AppStrings.lastUpdate}: $formattedDate , $formattedTime",
      style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontStyle: FontStyle.italic,
          overflow: TextOverflow.ellipsis),
    );
  }
}
