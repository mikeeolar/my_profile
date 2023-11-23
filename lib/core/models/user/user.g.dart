// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String?,
      firstname: fields[1] as String?,
      lastname: fields[2] as String?,
      password: fields[3] as String?,
      token: fields[4] as String?,
      loginUsername: fields[5] as String?,
      imageUrl: fields[6] as String?,
      refreshToken: fields[7] as String?,
      emailAddress: fields[8] as String?,
      phoneNumber: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstname)
      ..writeByte(2)
      ..write(obj.lastname)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.token)
      ..writeByte(5)
      ..write(obj.loginUsername)
      ..writeByte(6)
      ..write(obj.imageUrl)
      ..writeByte(7)
      ..write(obj.refreshToken)
      ..writeByte(8)
      ..write(obj.emailAddress)
      ..writeByte(9)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
      loginUsername: json['loginUsername'] as String?,
      imageUrl: json['imageUrl'] as String?,
      refreshToken: json['refreshToken'] as String?,
      emailAddress: json['emailAddress'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'password': instance.password,
      'token': instance.token,
      'loginUsername': instance.loginUsername,
      'imageUrl': instance.imageUrl,
      'refreshToken': instance.refreshToken,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
    };
