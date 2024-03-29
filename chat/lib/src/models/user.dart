// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String userName;
  String photoUrl;
  String? _id;
  String? get id => _id;
  bool active;
  DateTime lastSeen;
  User({
    required this.userName,
    required this.photoUrl,
    required this.active,
    required this.lastSeen,
  });

  toJson() => {
        'username': userName,
        'photo_url': photoUrl,
        'active': active,
        'last_seen': lastSeen,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    final user = User(
        userName: json['username'],
        photoUrl: json['photo_url'],
        active: json['active'],
        lastSeen: json['last_seen']);
    user._id = json['id'];
    return user;
  }
}
