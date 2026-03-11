/// Represents the logged-in user of the coffee shop app.
class User {
  /// Creates a [User] with a display [name], [mail] address and [phone] number.
  User({required this.name, required this.mail, required this.phone});

  /// Display name shown in the profile and catalog greeting.
  final String name;

  /// Email address of the user.
  final String mail;

  /// Phone number of the user.
  final String phone;
}
