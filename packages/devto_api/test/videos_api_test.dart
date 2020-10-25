import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for VideosApi
void main() {
  var instance = VideosApi();

  group('tests for VideosApi', () {
    // Articles with a video
    //
    // This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain `24` articles by default. 
    //
    //Future<List<ArticleVideo>> getArticlesWithVideo({ int page, int perPage }) async 
    test('test getArticlesWithVideo', () async {
      // TODO
    });

  });
}
