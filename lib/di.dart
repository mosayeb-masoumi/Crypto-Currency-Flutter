import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/data/data_source/currency_data_source.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/data/repository_impl/currency_repository_impl.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/repository/currency_repository.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/domain/usecase/currency_usecase.dart';
import 'package:crypto_currency_project/features/crypto_currency_feature/currency_list/presentation/bloc/currency_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setUpDI() {

// currency feature
  sl.registerLazySingleton<CurrencyDataSource>(() => ICurrencyDataSource());
  sl.registerLazySingleton<CurrencyRepository>(() => CurrencyRepositoryImpl(sl()));
  sl.registerLazySingleton<CurrencyUsecase>(() => CurrencyUsecase(sl()));
  sl.registerLazySingleton<CurrencyCubit>(() => CurrencyCubit(sl()));
}
