import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for TagsApi
void main() {
  var instance = TagsApi();

  group('tests for TagsApi', () {
    // Followed tags
    //
    // This endpoint allows the client to retrieve a list of the tags they follow. 
    //
    //Future<List<FollowedTag>> getFollowedTags() async 
    test('test getFollowedTags', () async {
      // TODO
    });

    // Tags
    //
    // This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain `10` tags by default. 
    //
    //Future<List<Tag>> getTags({ int page, int perPage }) async 
    test('test getTags', () async {
      // TODO
    });

  });
}
