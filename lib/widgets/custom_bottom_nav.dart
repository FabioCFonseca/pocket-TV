import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        iconSize: 30,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'TV'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined), label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: 'Books'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorites'),
        ],
      );
  }
}
