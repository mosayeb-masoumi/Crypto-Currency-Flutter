import 'package:bloc/bloc.dart';
import '../../domain/entity/currency_model.dart';
import '../../domain/usecase/currency_usecase.dart';
import 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  final CurrencyUsecase _usecase;

  CurrencyCubit(this._usecase) : super(const CurrencyState.initial());

  late List<CurrencyModel> result;

// in this method , list of currencies will be called and result emitted.
  Future<dynamic> getCurrencies() async {
    try {
      emit(const CurrencyState.loading());
      result = await _usecase.getCurrencies();
      emit(CurrencyState.loaded(result));
    } catch (error) {
      emit(CurrencyState.error(error.toString()));
    }
  }

  // in this method , if query search is empty, the total list will be emitted or else
  // the related result base on query will be emitted
  Future<dynamic> searchResult(String query) async {
    if (query.isNotEmpty && result.isNotEmpty) {
      List<CurrencyModel> searchedList = result
          .where((x) =>
      x.name.toLowerCase().contains(query.toLowerCase()) ||
          x.symbol.toLowerCase().contains(query.toLowerCase()))
          .toList();
      emit(CurrencyLoaded(searchedList));
    } else {
      emit(CurrencyLoaded(result));
    }
  }

}
