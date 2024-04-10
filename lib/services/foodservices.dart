import 'package:flutter/material.dart';
import '../util/categories.dart';
import '../screens/trending.dart';
import '../screens/categories.dart';
import '../util/friends.dart';
import '../util/restaurants.dart';
import '../widgets/category_item.dart';
import '../widgets/search_card.dart';
import '../widgets/slide_item.dart';

class HomeService {
  Widget buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: SearchCard(),
    );
  }

  Widget buildRestaurantRow(String restaurant, BuildContext context, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          restaurant,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }

  Widget buildCategoryRow(String category, BuildContext context, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          category,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }

  Widget buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          var cat = categories[index];
          return CategoryItem(cat: cat);
        },
      ),
    );
  }

  Widget buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          var restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }

  Widget buildFriendsList(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: friends.length,
        itemBuilder: (BuildContext context, int index) {
          String img = friends[index];
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 25.0,
            ),
          );
        },
      ),
    );
  }
}

class FoodService {
  Widget buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: SearchCard(),
    );
  }

  Widget buildRestaurantRow(String title, BuildContext context, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }

  Widget buildCategoryRow(String title, BuildContext context, VoidCallback onPressed) {
    return buildRestaurantRow(title, context, onPressed);
  }

  Widget buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          var category = categories[index];
          return CategoryItem(cat: category);
        },
      ),
    );
  }

  Widget buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          var restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }

  Widget buildFriendsList(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: friends.length,
        itemBuilder: (BuildContext context, int index) {
          String img = friends[index];
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 25.0,
            ),
          );
        },
      ),
    );
  }
}