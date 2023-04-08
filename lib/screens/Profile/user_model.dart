class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String dev;
  final String address;
  final bool isDarkMode;

  const User({
    required this.dev,
    required this.address,
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
  });

  User copy({
    String? address,
    String? dev,
    String? imagePath,
    String? name,
    String? email,
    String? about,
    bool? isDarkMode,
  }) =>
      User(
        address: address ?? this.address,
        dev: dev ?? this.dev,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        about: about ?? this.about,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        dev: json['dev'],
        address: json['address'],
        email: json['email'],
        about: json['about'],
        isDarkMode: json['isDarkMode'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'dev': dev,
        'email': email,
        'about': about,
        'address':address,
        'isDarkMode': isDarkMode,
      };
}