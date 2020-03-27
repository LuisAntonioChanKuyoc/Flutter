import 'package:app_demo/app/Core/store/models/app_store.dart';
import 'package:app_demo/app/Core/store/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      shoppingCart: null, counter: counterReducers(state.counter, action));
}
