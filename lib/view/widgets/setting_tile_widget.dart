import 'package:flutter/material.dart';

import '../../models/setting_tile_model.dart';

class SettingTile extends StatelessWidget {
  final Setting setting;

  const SettingTile({
    super.key,
    required this.setting,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(setting.icon),
          title: Text(setting.title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffe0e0e0))),
          onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: Color(0xff363636).withOpacity(0.8),
                    contentPadding: const EdgeInsets.only(bottom: 32),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    title: const Text(
                      'Change account name',
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
                        Padding(
                          padding: const EdgeInsets.only(left: 32, right: 32),
                          child: Divider(
                            color: Color(0xff979797),
                            thickness: 1,
                          ),
                        ),
                        const SingleChildScrollView(
                            child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 12,right: 12),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff7A7A7A)),
                                color: Color(0xff1D1D1D),
                                borderRadius: BorderRadius.circular(5)
                              ), child: TextField()),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 117,
                                height: 52,
                                child: TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Color(0xff8875FF)),
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
                                                  BorderRadius.circular(12)))),
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('Save'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
        )
      ],
    );
  }
}
