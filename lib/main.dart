import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_on_state_management/business%20logic/Replace_ui/replace_ui_cubit_cubit.dart';
import 'package:train_on_state_management/business%20logic/change%20color/change_color_cubit.dart';
import 'package:train_on_state_management/business%20logic/counter_cubit/counter_cubit.dart';
import 'package:train_on_state_management/screens/Task1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (BuildContext context) => CounterCubit(),
        ),
        BlocProvider<ReplaceUiCubit>(
          create: (BuildContext context) => ReplaceUiCubit(),
        ),
        BlocProvider<ChangeColorCubit>(
          create: (BuildContext context) => ChangeColorCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Task1(),
      ),
    );
  }
}
