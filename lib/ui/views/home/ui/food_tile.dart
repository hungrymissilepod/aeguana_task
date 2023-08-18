import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:aeguana_task/models/food_model.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 95,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: <Widget>[
            const Image(
              image: AssetImage(
                'assets/home/food.png',
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            food.title,
                            style: const TextStyle(
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            food.brand,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kNearBlackColor,
                              fontFamily: 'Raleway',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${food.price} €',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  color: kPriceColor,
                                  decoration:
                                      food.discountPrice == null ? TextDecoration.none : TextDecoration.lineThrough,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Visibility(
                                visible: food.discountPrice != null,
                                child: Text(
                                  '${food.discountPrice} €',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    color: kDiscountPriceColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        food.inStock
                            ? ClipOval(
                                child: Material(
                                  color: kPrimaryColor,
                                  child: InkWell(
                                    onTap: () {},
                                    child: const SizedBox(
                                      height: 28,
                                      width: 28,
                                      child: Center(
                                        child: Icon(
                                          Icons.add_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const Text(
                                'SOLD OUT',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  color: kSoldOutColor,
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
