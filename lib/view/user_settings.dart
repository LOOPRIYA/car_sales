import 'package:car_sales/models/setting_tile_model.dart';
import 'package:car_sales/view/widgets/setting_tile_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  const SizedBox(height: 15),
                  const Column(
                    children: [
                      Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                        "Profile",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    // padding: EdgeInsets.only(bottom: 16),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.mds.yandex.net/get-entity_search/5535095/833609987/S88x88Smart_2x"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                          "Example Name"),
                    ],
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )),
                    ],
                  ),
                  Column(
                      children: List.generate(settings.length,
                          (index) => SettingTile(setting: settings[index]))),
                  const Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Information",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )),
                    ],
                  ),
                  Column(
                      children: List.generate(settings2.length,
                          (index) => SettingTile(setting: settings2[index]))),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                            child: Image.asset(
                                "assets/master_booking/logout.png")),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text("Log out",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffff4949))),
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
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
