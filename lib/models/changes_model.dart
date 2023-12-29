class Change {
  final String title;
  final String icon;

  Change({
    required this.title,
    required this.icon,
  });
}

final List<Change> changes = [
  Change(title: "Range Rover Sport", icon: "assets/master_booking/car.png"),
  Change(title: "Mary Smith", icon: "assets/master_booking/user_small.png"),
  Change(title: "+971552223344", icon: "assets/master_booking/phone.png"),
  Change(
      title: "Marta_Hays@gmail.com", icon: "assets/master_booking/email.png"),
  Change(
      title: "Do everything beautifuly and at the highest level...",
      icon: "assets/master_booking/description_small.png"),
];
