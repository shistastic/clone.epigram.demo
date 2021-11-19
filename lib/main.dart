
import 'package:clone_epigram_demo/redux/reducers/reducers.dart';
import 'package:clone_epigram_demo/redux/store/store.dart';
import 'package:clone_epigram_demo/screens/cash_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Store<AppState> _store =
  Store<AppState>(reducers, initialState: AppState.initial());

  runApp(
    MyApp('/cash_summary', _store),
  );
}

class MyApp extends StatelessWidget {
  String initialRoute;
  final Store<AppState> store;
  MyApp(this.initialRoute, this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Epigram Demo',
        initialRoute: initialRoute,
        routes: {
          '/cash_summary': (context) => const CashSummaryScreen(),
        },
      ),
    );
  }
}
