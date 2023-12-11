class CurrencyModel {

  String id;
  String symbol;
  String name;
  String image;
  dynamic currentPrice;
  dynamic marketCap;
  dynamic marketCapRank;
  dynamic totalVolume;
  dynamic high24h;
  dynamic low24h;
  dynamic priceChange24h;
  dynamic marketCapChange24h;
  dynamic marketCapChangePercentage24h;
  String lastUpdated;


  CurrencyModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.totalVolume,
    required this.high24h,
    required this.low24h,
    required  this.priceChange24h,
    required this.marketCapChange24h,
    required this.marketCapChangePercentage24h,
    required this.lastUpdated});

  CurrencyModel.fromJson(Map<String, dynamic> json)
      : id = json["id"] ?? "",
        symbol = json["symbol"] ?? "",
        name = json["name"] ?? "",
        image = json["image"] ?? "",
        currentPrice = json["current_price"] ?? 0,
        marketCap = json["market_cap"] ?? 0,
        marketCapRank = json["market_cap_rank"] ?? 0,
        totalVolume = json["total_volume"] ?? 0,
        high24h = json["high_24h"] ?? 0,
        low24h = json["low_24h"] ?? 0,
        priceChange24h = json["price_change_24h"] ?? 0,
        marketCapChange24h = json["market_cap_change_24h"] ?? 0,
        marketCapChangePercentage24h =json["market_cap_change_percentage_24h"] ?? 0,
        lastUpdated = json["last_updated"] ?? "";
}
