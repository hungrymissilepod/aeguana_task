import 'package:flutter_app_template/models/food_model.dart';

List<Food> _meals = [
  const Food(
    title: 'Meal #1',
    brand: 'Mars',
    price: '10.50',
  ),
  const Food(
    title: 'Meal #2',
    brand: 'Mars',
    price: '10.50',
    discountPrice: '8.50',
  ),
  const Food(
    title: 'Meal #3',
    brand: 'Mars',
    price: '9.50',
    inStock: false,
  ),
  const Food(
    title: 'Meal #4',
    brand: 'Mars',
    price: '9.50',
  ),
];

List<Food> _snacks = [
  const Food(
    title: 'Snack #1',
    brand: 'Mars',
    price: '9.50',
  ),
  const Food(
    title: 'Snack #2',
    brand: 'Mars',
    price: '9.50',
    discountPrice: '7.50',
  ),
  const Food(
    title: 'Snack #3',
    brand: 'Mars',
    price: '9.50',
  ),
  const Food(
    title: 'Snack #4',
    brand: 'Mars',
    price: '9.50',
  ),
];

List<Food> _sweets = [
  const Food(
    title: 'Sweets #1',
    brand: 'Mars',
    price: '3.50',
    inStock: false,
  ),
  const Food(
    title: 'Sweets #2',
    brand: 'Mars',
    price: '3.50',
    discountPrice: '2.00',
  ),
  const Food(
    title: 'Sweets #3',
    brand: 'Mars',
    price: '3.50',
  ),
  const Food(
    title: 'Sweets #4',
    brand: 'Mars',
    price: '3.50',
    inStock: false,
  ),
];

List<Food> _drinks = [
  const Food(
    title: 'Drink #1',
    brand: 'Mars',
    price: '9.50',
  ),
  const Food(
    title: 'Drink #2',
    brand: 'Mars',
    price: '9.50',
    discountPrice: '7.50',
  ),
  const Food(
    title: 'Drink #3',
    brand: 'Mars',
    price: '9.50',
    inStock: false,
  ),
  const Food(
    title: 'Drink #4',
    brand: 'Mars',
    price: '9.50',
  ),
];

class FoodService {
  List<Food> get meals => _meals;
  List<Food> get snacks => _snacks;
  List<Food> get sweets => _sweets;
  List<Food> get drinks => _drinks;
}
