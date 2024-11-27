
// Banner Model
class Banner {
  final String image;
  final String buttonTitle;

  Banner({required this.image, required this.buttonTitle});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      image: json['image'],
      buttonTitle: json['button_title'],
    );
  }
}

// Barbershop Model
class Barbershop {
  final String name;
  final String locationWithDistance;
  final String image;
  final double reviewRate;

  Barbershop({
    required this.name,
    required this.locationWithDistance,
    required this.image,
    required this.reviewRate,
  });

  factory Barbershop.fromJson(Map<String, dynamic> json) {
    return Barbershop(
      name: json['name'],
      locationWithDistance: json['location_with_distance'],
      image: json['image'],
      reviewRate: json['review_rate'],
    );
  }
}

// DataModel containing the banner and barbershops list
class BarbershopModel {
  final Banner banner;
  final List<Barbershop> nearestBarbershop;

  BarbershopModel({required this.banner, required this.nearestBarbershop});

  factory BarbershopModel.fromJson(Map<String, dynamic> json) {
    return BarbershopModel(
      banner: Banner.fromJson(json['banner']),
      nearestBarbershop: (json['nearest_barbershop'] as List)
          .map((item) => Barbershop.fromJson(item))
          .toList(),
    );
  }
}
