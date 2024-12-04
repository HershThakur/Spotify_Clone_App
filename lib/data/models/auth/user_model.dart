class UserModel {
  String? fullName;
  String? email;
  String? imageURL;

  UserModel({required this.fullName, required this.email, required this.imageURL});

  UserModel.fromJson(Map<String, dynamic> data) {
    fullName = data['name'];
    email = data['email'];
  }
}
