class Movie {
  final String title;
  final String releaseYear;
  final String locations;
  final String productionCompany;
  final String distributor;
  final String director;
  final String writer;
  final String actor1;
  final String actor2;final String actor3;
  final String? computedRegion6qbpSg9q;
  final String? computedRegionAjp5B2md;
  final String? computedRegion26crCadq;

  Movie({
    required this.title,
    required this.releaseYear,
    required this.locations,
    required this.productionCompany,
    required this.distributor,
    required this.director,
    required this.writer,
    required this.actor1,
    required this.actor2,
    required this.actor3,
    this.computedRegion6qbpSg9q,
    this.computedRegionAjp5B2md,
    this.computedRegion26crCadq,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] as String,
      releaseYear: json['release_year'] as String,
      locations: json['locations'] as String,
      productionCompany: json['production_company'] as String,
      distributor: json['distributor'] as String,
      director: json['director'] as String,
      writer: json['writer'] as String,
      actor1: json['actor_1'] as String,
      actor2: json['actor_2'] as String,
      actor3: json['actor_3'] as String,
      computedRegion6qbpSg9q: json[':@computed_region_6qbp_sg9q'] as String?,
      computedRegionAjp5B2md: json[':@computed_region_ajp5_b2md'] as String?,
      computedRegion26crCadq: json[':@computed_region_26cr_cadq'] as String?,
    );
  }
}