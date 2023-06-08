class User {
  final String name;
  final String fullName;

  User(this.name, this.fullName);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        fullName = json['fullName'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'fullName': fullName,
      };
}
