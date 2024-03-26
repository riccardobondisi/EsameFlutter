// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roomDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDetailImpl _$$RoomDetailImplFromJson(Map<String, dynamic> json) =>
    _$RoomDetailImpl(
      type: json['type'] as String,
      image: json['image'] as String,
      adults: json['adults'] as int,
      mq: json['mq'] as int,
      price: json['price_for_night'] as int,
    );

Map<String, dynamic> _$$RoomDetailImplToJson(_$RoomDetailImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'adults': instance.adults,
      'mq': instance.mq,
      'price_for_night': instance.price,
    };
