import 'package:flutter_dotenv/flutter_dotenv.dart';

final baseUrl = dotenv.env['TMDB_BASE_URL']!;
final imageBaseUrl = dotenv.env['TMDB_IMAGE_BASE_URL']!;
