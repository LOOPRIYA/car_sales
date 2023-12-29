import 'package:flutter/material.dart';

class CardCanceled extends StatelessWidget {
  const CardCanceled({
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
                        color: Color(0xff5f559b),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Canceled",
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
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff000000)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      onPressed: () => Navigator.pop(context, 'Change'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/master_booking/reason.png"),
                          SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'THE REASON OF CANCELLATION',
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
