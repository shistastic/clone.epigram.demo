
import 'package:clone_epigram_demo/redux/store/store.dart';

AppState reducers(AppState prevState, dynamic action) {
  print("-------------");
  print("In the reducer");

  // Temporary Dummy Reducer
  return AppState.copyWith(prev: prevState, crossFade: action.payload);

  // if (action is UpdateSensorTimeRange) {
  //   return AppState.copyWith(prev: prevState, sensorTimeRange: action.payload);
  // } else if (action is UpdateCrossfade) {
  //   return AppState.copyWith(prev: prevState, crossFade: action.payload);
  // } else if (action is UpdateChartShownValue) {
  //   return AppState.copyWith(prev: prevState, shownValue: action.payload);
  // } else {
  //   return AppState.copyWith(prev: prevState, crossFade: action.payload);
  // }
}
