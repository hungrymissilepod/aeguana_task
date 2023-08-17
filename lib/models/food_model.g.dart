// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      title: json['title'] as String,
      brand: json['brand'] as String,
      price: json['price'] as String,
      discountPrice: json['discountPrice'] as String?,
      inStock: json['inStock'] as bool? ?? true,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'title': instance.title,
      'brand': instance.brand,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'inStock': instance.inStock,
    };
