import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_on_state_management/business%20logic/Replace_ui/replace_ui_cubit_cubit.dart';
import 'package:train_on_state_management/business%20logic/counter_cubit/counter_cubit.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text('- TASK 4 -'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    child: const Text('-')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text(
                          context.read<CounterCubit>().counter.toString());
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    child: const Text('+')),
              ],
            ),
          ),
          const Spacer(),
          BlocBuilder<ReplaceUiCubit, ReplaceUiCubitState>(
            builder: (context, state) {
              if (state is ShowText) {
                return const Text('Hello, Abdo');
              } else if (state is ShowImage) {
                return SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset('images/123456.png'));
              } else if (state is ShowRedCircle) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 204, 13, 13)),
                );
              } else {
                return const Text('No button clicked');
              }
            },
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showText();
              },
              child: const Text('show text')),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showImage();
              },
              child: const Text('show iamge')),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showRedCircle();
              },
              child: const Text('show red circle')),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().reset();
              },
              child: const Text('reset')),
          const Spacer(),
        ],
      ),
    );
  }
}
