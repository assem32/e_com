abstract class HomeProductStates{}

class  HomeProductInit extends HomeProductStates{}

class HomeProductSuccessState extends HomeProductStates{
  final List<dynamic> products;
  HomeProductSuccessState(this.products);

}

class HomeProductErrorState extends HomeProductStates{
  final String error;
  HomeProductErrorState(this.error);

}