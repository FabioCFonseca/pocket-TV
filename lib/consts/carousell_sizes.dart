class CarousellSizes {
  static const Map<String, double> headliner = {
    'containerHeight': 450.0,
    'imageHeight': 380.0,
    'imageWidth': 300.0,
  };

  static const Map<String, double> normal = {
    'containerHeight': 250.0,
    'imageHeight': 180.0,
    'imageWidth': 130.0,
  };

  static const Map<String, double> horizontal = {
    'containerHeight': 250.0,
    'imageHeight': 170.0,
    'imageWidth': 300.0,
  };
}

class CarousellSize {
  CarousellSize._private(
      {required this.containerHeight,
      required this.imageHeight,
      required this.imageWidth});

  final double containerHeight;
  final double imageHeight;
  final double imageWidth;

  factory CarousellSize.headliner() {
    return CarousellSize._private(
        containerHeight: 450.0, imageHeight: 380.0, imageWidth: 300.0);
  }

  factory CarousellSize.normal() {
    return CarousellSize._private(
        containerHeight: 250.0, imageHeight: 180.0, imageWidth: 130.0);
  }

  factory CarousellSize.horizontal() {
    return CarousellSize._private(
        containerHeight: 250.0, imageHeight: 170.0, imageWidth: 300.0);
  }
}
