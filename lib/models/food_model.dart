import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'food_model.g.dart';

@JsonSerializable()
class Food extends Equatable {
  final String title;
  final String brand;
  final String price;
  final String? discountPrice;
  final bool inStock;

  const Food({
    required this.title,
    required this.brand,
    required this.price,
    this.discountPrice,
    this.inStock = true,
  });

  @override
  List<Object?> get props => [title, brand, price, discountPrice, inStock];
}
