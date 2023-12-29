import 'package:flutter/material.dart';

import '../changes_view.dart';

class CardApproved extends StatelessWidget {
  const CardApproved({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 272,
      width: 396,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Color(0xff363636),
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff101010),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 52,
                    width: 154,
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/master_booking/time.png"),
                            SizedBox(width: 9),
                            const Text(
                              "05 PM",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/master_booking/date.png"),
                            SizedBox(width: 9),
                            const Text(
                              "Fri, Sep 22, 2023",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Container(
                      height: 24,
                      width: 77,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff40CC46),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Approved",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Container(
                width: 362,
                height: 132,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff000000)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    right: 8,
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/master_booking/car.png"),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Range Rover Sport",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/master_booking/user_small.png"),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Mary Smith",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/master_booking/description.png"),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Text(
                                "Do everything beautifuly and at the highes...",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: ButtonBar(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 45,
                    height: 40,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff000000)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Changes())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/master_booking/change.png"),
                          SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'CHANGE',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 45,
                    height: 40,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff000000)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                backgroundColor:
                                    Color(0xff363636).withOpacity(0.8),
                                contentPadding:
                                    const EdgeInsets.only(bottom: 32),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                title: const Text(
                                  'Are you shure to cancel this\n approvment?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SingleChildScrollView(
                                        child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            width: 117,
                                            height: 52,
                                            child: TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Cancel'),
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xff8875FF)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 117,
                                            height: 52,
                                            child: FilledButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Color(0xff8875FF)),
                                                  shape: MaterialStatePropertyAll(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12)))),
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('Save'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/master_booking/cancel.png"),
                          SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'CANCEL',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                alignment: MainAxisAlignment.spaceBetween,
              ),
            )
          ],
        ),
      ),
    );
  }
}
