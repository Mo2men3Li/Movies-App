class Movie {
  final int id;
  final String url;
  final String imdbCode;
  final String title;
  final String titleEnglish;
  final String titleLong;
  final String slug;
  final int year;
  final double rating;
  final int runtime;
  final List<String> genres;
  final String language;
  final String mpaRating;
  final String backgroundImage;
  final String smallCoverImage;
  final String mediumCoverImage;
  final String largeCoverImage;
  final List<Torrent> torrents;
  final String dateUploaded;

  Movie({
    required this.id,
    required this.url,
    required this.imdbCode,
    required this.title,
    required this.titleEnglish,
    required this.titleLong,
    required this.slug,
    required this.year,
    required this.rating,
    required this.runtime,
    required this.genres,
    required this.language,
    required this.mpaRating,
    required this.backgroundImage,
    required this.smallCoverImage,
    required this.mediumCoverImage,
    required this.largeCoverImage,
    required this.torrents,
    required this.dateUploaded,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    var genresFromJson = json['genres'] as List;
    List<String> genresList = genresFromJson.map((i) => i.toString()).toList();

    var torrentsFromJson = json['torrents'] as List;
    List<Torrent> torrentsList =
    torrentsFromJson.map((i) => Torrent.fromJson(i)).toList();

    return Movie(
      id: json['id'],
      url: json['url'],
      imdbCode: json['imdb_code'],
      title: json['title'],
      titleEnglish: json['title_english'],
      titleLong: json['title_long'],
      slug: json['slug'],
      year: json['year'],
      rating: json['rating'].toDouble(),
      runtime: json['runtime'],
      genres: genresList,
      language: json['language'],
      mpaRating: json['mpa_rating'] ?? '',
      backgroundImage: json['background_image'],
      smallCoverImage: json['small_cover_image'],
      mediumCoverImage: json['medium_cover_image'],
      largeCoverImage: json['large_cover_image'],
      torrents: torrentsList,
      dateUploaded: json['date_uploaded'],
    );
  }
}

class Torrent {
  final String url;
  final String hash;
  final String quality;
  final String type;
  final bool isRepack;
  final String videoCodec;
  final String bitDepth;
  final String audioChannels;
  final int seeds;
  final int peers;
  final String size;
  final int sizeBytes;
  final String dateUploaded;

  Torrent({
    required this.url,
    required this.hash,
    required this.quality,
    required this.type,
    required this.isRepack,
    required this.videoCodec,
    required this.bitDepth,
    required this.audioChannels,
    required this.seeds,
    required this.peers,
    required this.size,
    required this.sizeBytes,
    required this.dateUploaded,
  });

  factory Torrent.fromJson(Map<String, dynamic> json) {
    return Torrent(
      url: json['url'],
      hash: json['hash'],
      quality: json['quality'],
      type: json['type'],
      isRepack: json['is_repack'] == 1,
      videoCodec: json['video_codec'],
      bitDepth: json['bit_depth'],
      audioChannels: json['audio_channels'],
      seeds: json['seeds'],
      peers: json['peers'],
      size: json['size'],
      sizeBytes: json['size_bytes'],
      dateUploaded: json['date_uploaded'],
    );
  }
}

class MovieResponse {
  final String status;
  final String statusMessage;
  final Data data;

  MovieResponse({
    required this.status,
    required this.statusMessage,
    required this.data,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) {
    return MovieResponse(
      status: json['status'],
      statusMessage: json['status_message'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  final int movieCount;
  final int limit;
  final int pageNumber;
  final List<Movie> movies;

  Data({
    required this.movieCount,
    required this.limit,
    required this.pageNumber,
    required this.movies,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    var moviesFromJson = json['movies'] as List;
    List<Movie> moviesList = moviesFromJson.map((i) => Movie.fromJson(i)).toList();

    return Data(
      movieCount: json['movie_count'],
      limit: json['limit'],
      pageNumber: json['page_number'],
      movies: moviesList,
    );
  }
}
