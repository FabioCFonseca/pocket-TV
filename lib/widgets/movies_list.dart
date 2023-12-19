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
      constraints: BoxConstraints(maxHeight: 300),
      margin: EdgeInsets.only(bottom: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              '$category',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moviesData.length,
                itemBuilder: (context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            '${moviesData[index].image}',
                            fit: BoxFit.cover,
                            width: 125,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(moviesData[index].name),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
