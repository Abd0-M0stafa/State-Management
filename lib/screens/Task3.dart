import 'package:flutter/material.dart';
import 'package:train_on_state_management/screens/Task4.dart';

class Task3 extends StatefulWidget {
  Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  List<String> options = [
    'option 1',
    'option 2',
    'option 3',
    'option 4',
    'option 5',
    'option 6',
    'option 7',
    'option 8',
    'option 9',
    'option 10',
    'option 11',
    'option 12',
    'option 13',
    'option 14',
    'option 15',
    'option 16',
    'option 17',
    'option 18',
    'option 19',
    'option 20',
  ];

  String? currentOption;

  @override
  void initState() {
    super.initState();
    currentOption = options[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 127, 18, 100),
          automaticallyImplyLeading: false,
          title: const Center(child: Text('- TASK 3 -')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < options.length; i++) ...[
                ListTile(
                  title: Text(options[i]),
                  leading: Radio(
                    value: options[i],
                    groupValue: currentOption,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color.fromARGB(255, 127, 18, 100)),
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    },
                  ),
                )
              ],
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 30),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 127, 18, 100),
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Task4(),
                        ),
                      );
                    },
                    child: const Text('Next Task')),
              )
            ],
          ),
        ));
  }
}
