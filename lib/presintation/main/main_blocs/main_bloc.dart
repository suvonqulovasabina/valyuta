import 'package:bloc/bloc.dart';
import 'package:valyuta/data/repository/repository_impl.dart';
import 'package:valyuta/presintation/main/main_blocs/main_state.dart';

part 'main_event.dart';
class MainBloc extends Bloc<MainEvent, MainState> {
  final rb = RepositoryImpl();

  MainBloc() : super(MainState(list: [],)) {
    on<MainLoadEvent>((event, emit) async {

        final getCurrnsy = await rb.getCurrnsy();
        print("bdbdbdbbdbdbd     ${getCurrnsy.length}");
        emit(MainState(list: getCurrnsy));
    });

    on<MainLoadDay>((event, emit) async {

      final getCurrnsy = await rb.getCurrensyDay(event.day);
      print("bdbdbdbbdbdbd     ${getCurrnsy.length}");
      emit(MainState(list: getCurrnsy));
    });

  }
}
