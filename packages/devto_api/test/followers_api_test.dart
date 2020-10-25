import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for FollowersApi
void main() {
  var instance = FollowersApi();

  group('tests for FollowersApi', () {
    // Followers
    //
    // This endpoint allows the client to retrieve a list of the followers they have.  \"Followers\" are users that are following other users on the website.  It supports pagination, each page will contain `80` followers by default. 
    //
    //Future<List<Follower>> getFollowers({ int page, int perPage }) async 
    test('test getFollowers', () async {
      // TODO
    });

  });
}
