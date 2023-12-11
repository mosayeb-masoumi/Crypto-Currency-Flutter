import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/data/data_source/currency_data_source.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/repository/currency_repository.dart';

class CurrencyRepositoryImpl extends CurrencyRepository {
  final CurrencyDataSource _dataSource;
  CurrencyRepositoryImpl(this._dataSource);

  @override
  Future getCurrencies() {
    return _dataSource.getCurrencies();
  }

}