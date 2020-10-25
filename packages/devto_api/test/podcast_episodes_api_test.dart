import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for PodcastEpisodesApi
void main() {
  var instance = PodcastEpisodesApi();

  group('tests for PodcastEpisodesApi', () {
    // Published podcast episodes
    //
    // This endpoint allows the client to retrieve a list of podcast episodes.  \"Podcast episodes\" are episodes belonging to podcasts.  It will only return active podcast episodes that belong to published podcasts available on the platform, ordered by descending publication date.  It supports pagination, each page will contain `30` articles by default. 
    //
    //Future<List<PodcastEpisode>> getPodcastEpisodes({ int page, int perPage, String username }) async 
    test('test getPodcastEpisodes', () async {
      // TODO
    });

  });
}
