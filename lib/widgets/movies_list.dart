import 'package:flutter/material.dart';
import 'package:pocket_tv/mockedData/mocked_data.dart';
import '../../../consts/carousell_sizes.dart';

class Carousell extends StatelessWidget {
  Carousell({super.key, required this.carousellSizes, required this.category});

  final String category;
  final List moviesData = Movie.generateMovieList();
  final CarousellSize carousellSizes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28),
      height: carousellSizes.containerHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text('$category', style: TextStyle(fontSize: 18),),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moviesData.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        '${moviesData[index].image}',
                        fit: BoxFit.fill,
                        height: carousellSizes.imageHeight,
                        width: carousellSizes.imageWidth,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}