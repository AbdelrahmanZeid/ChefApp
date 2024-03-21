import 'package:bloc/bloc.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;
  void changeIndex(
    index,
  ) {
    currentIndex = index;
    emit(
      ChangeIndexSuccessState(),
    );
  }
}
