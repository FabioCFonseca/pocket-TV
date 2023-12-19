import 'package:flutter/material.dart';
import 'package:pocket_tv/widgets/movies_list.dart';
import 'package:pocket_tv/widgets/custom_appbar.dart';
import 'package:pocket_tv/widgets/custom_bottom_nav.dart';
import 'package:pocket_tv/consts/carousell_sizes.dart';

import '../widgets/movies_carousell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
         padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
          child: ListView(
            children: [
              MoviesCarousell(
                category: 'Trending',
                containerHeight: 400,
              ),
              Carousell(
                  carousellSizes: CarousellSize.normal(),
                  category: 'New Movies'),
              MoviesCarousell(
                category: 'You May Like',
                containerHeight: 180,
              ),
              Carousell(
                  carousellSizes: CarousellSize.normal(),
                  category: 'TV Series'),
            ],
          )),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
