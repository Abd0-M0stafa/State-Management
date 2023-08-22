import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_on_state_management/business%20logic/change%20color/change_color_cubit.dart';
import 'package:train_on_state_management/screens/Task2.dart';
import 'package:train_on_state_management/widgets/used_widgets.dart';

// ignore: must_be_immutable
class Task1 extends StatelessWidget {
  Task1({super.key});
  List names = ['Healthy', 'Technology', 'Finace', 'Arts', 'Sports', 'History'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 171, 32, 22),
        title: const Center(child: Text('- TASK 1 -')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SizedBox(
              height: 80,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                for (int i = 0; i < names.length; i++)
                  BlocBuilder<ChangeColorCubit, ChangeColorState>(
                    builder: (context, state) {
                      return button(
                          text: names[i],
                          colortext: state.selectedButtonIndex == i
                              ? Colors.white
                              : Colors.black,
                          colorbox: state.selectedButtonIndex == i
                              ? const Color.fromARGB(255, 171, 32, 22)
                              : Colors.grey,
                          onpressed: () {
                            context.read<ChangeColorCubit>().changecolor(i);
                          });
                    },
                  ),
              ]),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 171, 32, 22),
                )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Task2(),
                    ),
                  );
                },
                child: const Text('Next Task')),
          )
        ],
      ),
    );
  }
}
