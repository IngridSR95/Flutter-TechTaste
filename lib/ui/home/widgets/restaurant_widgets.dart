import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/restaurant/retaurant_screen.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RetaurantScreen(restaurant: restaurant);
            },
          ),
        );
      },
      child: Row(
        children: [
          Image.asset('assets/${restaurant.imagePath}', width: 72.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Row(
                spacing: 12.0,
                children: List.generate(restaurant.stars.toInt(), (index) {
                  return Image.asset('assets/others/star.png', width: 16.0);
                }),
              ),
              Text('${restaurant.distance}km'),
            ],
          ),
        ],
      ),
    );
  }
}
