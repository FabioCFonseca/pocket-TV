import 'package:flutter/material.dart';
import 'package:pocket_tv/screens/home/widgets/carousell.dart';
import 'package:pocket_tv/widgets/custom_appbar.dart';
import 'package:pocket_tv/widgets/custom_bottom_nav.dart';
import 'package:pocket_tv/consts/carousell_sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Carousell(carousellSizes: CarousellSize.headliner() , category: 'Trending'),
            Carousell(carousellSizes: CarousellSize.normal() , category: 'New Movies'),
            Carousell(carousellSizes: CarousellSize.horizontal() , category: 'You May Like'),
            Carousell(carousellSizes: CarousellSize.normal() , category: 'TV Series'),
          ],
        )),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
