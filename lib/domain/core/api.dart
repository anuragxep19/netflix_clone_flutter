import 'package:netflix_clone/core/api__key.dart';
import 'package:netflix_clone/core/strings.dart';

class ApiEndPoints {
  static final downloads = '$baseUrl/trending/movie/day?api_key=$apiKey';
  static final search = '$baseUrl/search/movie?api_key=$apiKey';
  static final comingSoon = '$baseUrl/discover/movie?api_key=$apiKey';
  static final everyonesWatching = '$baseUrl/discover/tv?api_key=$apiKey';
}
