
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:my_portfolio/core/utils/type_id.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@HiveType(typeId: TypeId.user, adapterName: 'UserAdapter')
@freezed
class User with _$User {
  const factory User({
    @HiveField(0) String? id,
    @HiveField(1) String? firstname,
    @HiveField(2) String? lastname,
    @HiveField(3) String? password,
    @HiveField(4) String? token,
    @HiveField(5) String? loginUsername,
    @HiveField(6) String? imageUrl,
    @HiveField(7) String? refreshToken,
    @HiveField(8) String? emailAddress,
    @HiveField(9) String? phoneNumber,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
