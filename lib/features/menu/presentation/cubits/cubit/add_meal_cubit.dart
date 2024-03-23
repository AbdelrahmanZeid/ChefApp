import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_meal_state.dart';

class AddMealCubit extends Cubit<AddMealState> {
  AddMealCubit() : super(AddMealInitial());
}
