import 'package:usa_population_data_api/bloc/base_bloc.dart';
import 'package:usa_population_data_api/constant/strings.dart';
import 'package:usa_population_data_api/data/model/usa_population_model.dart';
import 'package:usa_population_data_api/data/vos/data_vo.dart';
import 'package:usa_population_data_api/utils/enums.dart';

class HomePageBloc extends BaseBloc {
  List<DataVO>? _populationDataList;

  List<DataVO>? get getPopulationDataList => _populationDataList;

  final USAPopulationModel _usaPopulationModel = USAPopulationModel();

  HomePageBloc() {
    setLoadingState = LoadingState.loading;
    notifyListeners();
    _usaPopulationModel.getPopulationData().then((value) {
      if (value.isEmpty) {
        setLoadingState = LoadingState.error;
        setErrorMessage = kErrorText;
        notifyListeners();
      } else {
        setLoadingState = LoadingState.complete;
        _populationDataList = value;
        notifyListeners();
      }
    }, onError: (e) {
      setErrorMessage = e;
      notifyListeners();
    });
  }
}
