import 'package:e_com/presentation/main_layout/manger/cubit.dart';
import 'package:e_com/presentation/main_layout/manger/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

   @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainLayoutCubit,MainLayoutState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
            body: MainLayoutCubit.get(context).screens[MainLayoutCubit.get(context).pageNum],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (index){
                MainLayoutCubit.get(context).changePage(index);
              },
              currentIndex: MainLayoutCubit.get(context).pageNum,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'cart'
                ),
                
              ],
            )
        );
      },
    );
  }
}