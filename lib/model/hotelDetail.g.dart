// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotelDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDetailImpl _$$HotelDetailImplFromJson(Map<String, dynamic> json) =>
    _$HotelDetailImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => RoomDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelDetailImplToJson(_$HotelDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'rooms': instance.rooms,
    };
