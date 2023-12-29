import 'package:car_sales/view/user_settings.dart';
import 'package:car_sales/view/widgets/card_canceled_widget.dart';
import 'package:car_sales/view/widgets/card_pending_widget.dart';
import 'package:flutter/material.dart';
import 'booking_request_view.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen())),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.mds.yandex.net/get-entity_search/5535095/833609987/S88x88Smart_2x"),
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Container(
                  height: 76,
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 2 - 27,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff363636)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                          onPressed: () => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => BookingRequest())),
                          child: const Text('ALL REQUEST'),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 2 - 27,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff8875FF)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                          onPressed: () => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Booking())),
                          child: const Text('New'),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      CardPending(),
                      CardCanceled(),
                    ],
                  ),
                ),
              ])),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 103,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xff363636).withOpacity(0.8),
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/master_booking/booking.png"),
                size: 70,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/master_booking/chat.png"),
                size: 70,
              ),
              label: 'Chat',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xff8875ff),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}


