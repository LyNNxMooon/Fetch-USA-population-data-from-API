import 'package:flutter/material.dart';
import 'package:usa_population_data_api/utils/enums.dart';

class BaseBloc extends ChangeNotifier {
  bool _isDispose = false;

  LoadingState _loadingState = LoadingState.loading;
  String? _errorMessage;

  LoadingState get getLoadingState => _loadingState;
  String? get getErrorMessage => _errorMessage;

  set setLoadingState(LoadingState loadingState) {
    _loadingState = loadingState;
    notifyListeners();
  }

  set setErrorMessage(String errorMessage) {
    _errorMessage = errorMessage;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    if (!_isDispose) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    _isDispose = true;
    super.dispose();
  }
}
