import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/repository/currency_repository.dart';

class CurrencyUsecase extends CurrencyRepository {
  final CurrencyRepository _repository;
  CurrencyUsecase(this._repository);
  @override
  Future getCurrencies() {
    return _repository.getCurrencies();
  }

}