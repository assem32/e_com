import 'package:e_com/presentation/cart/CartView.dart';
import 'package:e_com/presentation/home/Home.dart';
import 'package:e_com/presentation/main_layout/manger/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(AppInitial());
  static MainLayoutCubit get(context) => BlocProvider.of(context);

  List screens = [
    HomePage(),
    CartView()
  ];
  int pageNum = 0;
  void changePage(index) {
    pageNum = index;
    emit(ChangePageState());
  }

  int subPage = 0;

  void changeSubPage(index) {
    subPage = index;
    emit(ChangePageState());
  }


}
