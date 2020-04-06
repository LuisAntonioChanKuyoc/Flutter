import 'package:app_demo/app/Core/store/actions/couter_action.dart';
import 'package:app_demo/app/Core/store/models/counter.dart';
import 'package:redux/redux.dart';

final counterReducers = combineReducers<Counter>([
  TypedReducer<Counter, IncrementCounter>(_incrementReducer),
  TypedReducer<Counter, DecrementCounter>(_decrementeReducer),
]);

Counter _incrementReducer(Counter state, IncrementCounter action) {
  return new Counter().copyWith(counter: state.counter + 1);
}

Counter _decrementeReducer(Counter state, DecrementCounter action) {
  return new Counter().copyWith(counter: state.counter - 1);
}
