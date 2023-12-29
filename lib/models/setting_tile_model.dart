
class Setting {
  final String title;
  final String icon;

  Setting({
    required this.title,
    required this.icon,
  });

}
final List<Setting> settings = [
  Setting(
      title: "Change account name", icon: "assets/master_booking/user.png"),
  Setting(
      title: "Change account image", icon: "assets/master_booking/image.png"),
  Setting(
      title: "Change app language", icon: "assets/master_booking/language.png"),
];

final List<Setting> settings2 = [
  Setting(
      title: "About us", icon: "assets/master_booking/about_us.png"),
  Setting(
      title: "FAQ", icon: "assets/master_booking/faq.png"),
  Setting(
      title: "Help & Feedback", icon: "assets/master_booking/help.png"),
  Setting(
      title: "Support US", icon: "assets/master_booking/support.png"),
];
