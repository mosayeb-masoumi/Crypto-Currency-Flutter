
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/entity/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/strings.dart';
import '../../currency_list/presentation/components/currency_list_widgets.dart';

class DetailScreen extends StatelessWidget {
  final CurrencyModel item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(item.name),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Center(
                      child: CircleCachedImage(
                          imageUrl: item.image, height: 150, width: 150))),

              const SizedBox(
                height: 20,
              ),

              buildText(AppStrings.name, item.name),
              buildText(AppStrings.symbol, item.symbol),
              buildText(AppStrings.currentPriceUSD, item.currentPrice),
              buildText(AppStrings.marketCap, item.marketCap),
              buildText(AppStrings.marketCapRank, item.marketCapRank),
              buildText(AppStrings.totalVolume, item.totalVolume),
              buildText(AppStrings.marketCapChange24h, item.marketCapChange24h),
              buildLastUpdateText(item.lastUpdated),
              buildLastUpdateText(item.lastUpdated)
              // item.lastUpdated
            ],
          ),
        ),
      // ),
    );
  }

  Widget buildText(String title, var value) {
    return Text("$title: $value",
        style: const TextStyle(
            color: Colors.black, fontSize: 16, fontStyle: FontStyle.italic));
  }

  Widget buildLastUpdateText(String lastUpdated) {
    DateTime dateTime = DateTime.parse(lastUpdated);
    String formattedDate = DateFormat(AppStrings.dateFormat).format(dateTime);
    String formattedTime = DateFormat(AppStrings.timeFormat).format(dateTime);
    return Text("${AppStrings.lastUpdate}: $formattedDate , $formattedTime");
  }
}

