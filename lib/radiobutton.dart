import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radio_Button extends StatefulWidget {
  const Radio_Button({Key? key}) : super(key: key);

  @override
  State<Radio_Button> createState() => _Radio_ButtonState();
}

class _Radio_ButtonState extends State<Radio_Button> {
  // bool isChecked = false;
  // bool isChecked1 = false;

  //List<String> checklist = ["A", "B", "c", "D", "E", "F"];
  // List<String> selectCheaklist = [];
  var option;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // actions: [
          //   Switch(
          //       activeColor: Colors.red,
          //       value: isChecked1,
          //       onChanged: (v) {
          //         setState(() {
          //           isChecked1 = v;
          //         });
          //       })
          // ],
          ),
      body: Column(
        children: [
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: checklist.length,
          //       itemBuilder: (context, index) => CheckboxListTile(
          //             value: selectCheaklist.contains(checklist[index]),
          //             title: Text(checklist[index]),
          //             onChanged: (v) {
          //               if (selectCheaklist.contains(checklist[index])) {
          //                 setState(() {
          //                   selectCheaklist.remove(checklist[index]);
          //                 });
          //               } else {
          //                 setState(() {
          //                   selectCheaklist.add(checklist[index]);
          //                 });
          //               }
          //               print(selectCheaklist);
          //             },
          //           )),
          // ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: const Text("Q1. Which is the diamond city?"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("A"),
                Radio(
                  value: "Surat",
                  groupValue: option,
                  onChanged: (Object? value) {
                    setState(() {
                      option = value;
                    });
                  },
                ),
                const Text("Surat"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                const Text("B"),
                Radio(
                  value: "Varodra",
                  groupValue: option,
                  onChanged: (Object? value) {
                    setState(() {
                      option = value;
                    });
                  },
                ),
                const Text("Varodra"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
