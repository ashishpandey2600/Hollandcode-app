class UserModel {
  String? uid;
  String? fullname;
  String? schoolname;
  String? hobbies;
  String? location;
  String? phone;
  String? gender;
  String? age;
  String? email;
  String? profilepic;
  String? hollandcode;
  String? profession;
  String? schoolcode;
 

  UserModel(
      {this.uid,
      this.fullname,
      this.schoolname,
      this.hobbies,
      this.location,
      this.phone,
      this.gender,
      this.age,
      this.email,
      this.profilepic,
      this.hollandcode,
      this.profession,
      this.schoolcode});

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    fullname = map["fullname"];
    schoolname = map["schoolname"];
    hobbies = map["hobbies"];
    location = map["location"];
    phone = map["phone"];
    gender = map["gender"];
    age = map["age"];
    email = map["email"];
    profilepic = map["profilepic"];
    hollandcode = map["hollandcode"];
    profession = map["profession"];
    schoolcode = map["schoolcode"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "fullname": fullname,
      "schoolname": schoolname,
      " hobbies": hobbies,
      "location": location,
      "phone": phone,
      "gender": gender,
      "age": age,
      "email": email,
      "profilepic": profilepic,
      "hollandcode": hollandcode,
      "profession": profession,
      "schoolcode": schoolcode,
    };
  }
}
