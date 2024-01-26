import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usa_population_data_api/bloc/home_page_bloc.dart';
import 'package:usa_population_data_api/constant/colors.dart';
import 'package:usa_population_data_api/data/vos/data_vo.dart';
import 'package:usa_population_data_api/utils/enums.dart';
import 'package:usa_population_data_api/widgets/error_widget.dart';
import 'package:usa_population_data_api/widgets/expension_tile_card_widget.dart';
import 'package:usa_population_data_api/widgets/loading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageBloc>(
      create: (context) => HomePageBloc(),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
          title: const Text(
            'Recent USA Population',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: kSecondaryColor),
          ),
        ),
        body: Selector<HomePageBloc, LoadingState>(
          builder: (_, loading, __) => loading == LoadingState.loading
              ? const LoadingWidget()
              : loading == LoadingState.complete
                  ? const PopulationListView()
                  : const HomePageErrorStateView(),
          selector: (_, bloc) => bloc.getLoadingState,
        ),
      )),
    );
  }
}

class PopulationListView extends StatelessWidget {
  const PopulationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<HomePageBloc, List<DataVO>?>(
      builder: (_, populationList, __) => ListView.builder(
        itemBuilder: (context, index) =>
            CardWidget(populationData: populationList![index]),
        itemCount: populationList?.length,
      ),
      selector: (_, bloc) => bloc.getPopulationDataList,
    );
  }
}

class HomePageErrorStateView extends StatelessWidget {
  const HomePageErrorStateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<HomePageBloc, String?>(
      builder: (_, error, __) => ErrorWidgetView(error: error ?? ''),
      selector: (_, bloc) => bloc.getErrorMessage,
    );
  }
}
