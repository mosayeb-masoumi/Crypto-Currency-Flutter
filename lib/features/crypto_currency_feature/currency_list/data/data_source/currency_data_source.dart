
import 'package:dio/dio.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/network/network.dart';
import '../../domain/entity/currency_model.dart';

// used this abstract class to obey Dependency Inversion(SOLID principles)
abstract class CurrencyDataSource {
  Future<dynamic> getCurrencies();
}

class ICurrencyDataSource extends CurrencyDataSource {

  @override
  Future<dynamic> getCurrencies() async {

    var dio = DioUtil.getInstance();
    const String apiUrl = ("${Constants.baseUrl}/coins/markets");
    final queries = {
      "vs_currency": "usd",
      "order": "market_cap_desc",
      "per_page": 40,
      "page": 1,
    };

    try{
      Response response = await dio!.get(apiUrl , queryParameters: queries );
      if (response.statusCode == 200) {
        try {
          final List<dynamic> jsonData = response.data;
          List<CurrencyModel> currencyList = jsonData
              .map<CurrencyModel>((json) => CurrencyModel.fromJson(json))
              .toList();
          return currencyList;
        } catch (e) {
          throw Exception(e.toString());
        }
      } else {
        throw Exception("something wrong occurred!!!");
      }
    }on DioException catch (e){
      throw Exception(e.error.toString());
    }
  }
}