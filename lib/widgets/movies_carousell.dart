import 'package:flutter/material.dart';
import 'package:pocket_tv/mockedData/mocked_data.dart';

class MoviesCarousell extends StatefulWidget {
  const MoviesCarousell({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  State<MoviesCarousell> createState() => _MoviesCarousell();
}

class _MoviesCarousell extends State<MoviesCarousell> {
  final PageController _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  int _activePage = 1;
  List<Movie> moviesList = Movie.generateMovieList();
  List<Container> buildDotsIndicator() {
    return List.generate(moviesList.length, (index) {
      return Container(
        height: 6,
        width: 6,
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: index == _activePage ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
      );
    });
  }
  

  @override
  Widget build(BuildContext context) {
    List<Container> dots = buildDotsIndicator();

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(widget.category, style: TextStyle(fontSize: 18),)),
        SizedBox(
          height: 20,
        ),    
        Container(
          height: 500,
          child: PageView.builder(
            onPageChanged: (index){
              setState(() {
                _activePage = index;
              });
            },
            controller: _pageController,
            itemCount: moviesList.length,
            itemBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    moviesList[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: dots,
        )
      ],
    );
  }
}
