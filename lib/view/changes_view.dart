import 'package:car_sales/view/widgets/change_list_widget.dart';
import 'package:flutter/material.dart';

import '../models/changes_model.dart';

class Changes extends StatefulWidget {
  const Changes({super.key});

  @override
  State<Changes> createState() => _ChangesState();
}

class _ChangesState extends State<Changes> {
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff121212),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Booking",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: [],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Details",
                                style: TextStyle(
                                    color: Color(0xff8875FF), fontSize: 13),
                              )),
                        ),
                        Column(
                            children: List.generate(changes.length,
                                (index) => ChangeList(change: changes[index]))),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16),
                          child: Column(children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Pichup Form: -",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Delivery To AL ZAIN RESIDENCE, JVC",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            )
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 32.0, left: 16, bottom: 32),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Select Date & Time",
                                style: TextStyle(
                                    color: Color(0xff8875FF), fontSize: 13),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 2 - 25,
                                height: 48,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff1D1D1D)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          side: BorderSide(
                                              width: 1, color: Colors.grey),
                                        ))),
                                    onPressed: () => _selectDate(context),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${selectedDate.toLocal()}"
                                            .split(' ')[0],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2 - 25,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xff1D1D1D)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            side: BorderSide(
                                                width: 1, color: Colors.grey),
                                          ))),
                                      onPressed: () async {
                                        showTimePicker(
                                            context: context,
                                            initialTime: time);
                                      },
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "8 pm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                      )))
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Suggesct changes",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xff8875FF)),
                                shape: MaterialStateProperty.all(
                                    (RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))))),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
