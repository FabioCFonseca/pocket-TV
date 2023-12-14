class Movie {
  String? name;
  String image;
  String category;

  Movie(this.name, this.category, this.image);

  static List<Movie> generateMovieList() {
    return [
      Movie('The Flash', 'Place 1', 'assets/cp_marvel.jpg'),
      Movie('Aquamen', 'Place 2', 'assets/cp_marvel.jpg'),
      Movie('Hulk', 'Place 3', 'assets/cp_marvel.jpg'),
      Movie('Venom', 'Place 4', 'assets/cp_marvel.jpg'),
    ];
  }

}