import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class User {
  String empNo;

  String name;

  String email;

  int id;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User({
    this.empNo = '',
    this.name = '',
    this.email = '',
    this.id = 0,
  });
}
