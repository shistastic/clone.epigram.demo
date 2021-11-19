import 'package:clone_epigram_demo/redux/store/store.dart';

AppState reducers(AppState prevState, dynamic action) {
  print("-------------");
  print("In the reducer");

  // Temporary Dummy Reducer
  return AppState.copyWith(prev: prevState, cash: action.payload);
}
