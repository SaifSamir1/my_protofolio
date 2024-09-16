import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/logic/home_cubit/home_cubit.dart';
import 'package:my_portfolio/screens/the_protofolio.dart';
import 'package:my_portfolio/utiles/bloc_observer.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: WidgetStateProperty.all<Color>(Colors.white12),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => HomeCubit(),
          child: const ThePortfolio(),
        ),
      ),
    );
  }
}