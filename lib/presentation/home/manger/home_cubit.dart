import 'package:e_com/core/ErrorHandler.dart';
import 'package:e_com/domain/use_case/get_products_usecase.dart';
import 'package:e_com/presentation/home/manger/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<HomeProductStates>{

  final FetchProductsUseCase fetchProductsUseCase;

  ProductCubit(this.fetchProductsUseCase):super(HomeProductInit());

  Future <void> fetechProduct()async{
    var response = await fetchProductsUseCase.call();
    response.fold((error){
      ErrorHandler.getErrorMessage(error);
      emit(HomeProductErrorState(error));
    },(products){
    emit(HomeProductSuccessState(products));
    });
  }

  

  

}