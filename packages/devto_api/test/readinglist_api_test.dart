import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for ReadinglistApi
void main() {
  var instance = ReadinglistApi();

  group('tests for ReadinglistApi', () {
    // User's reading list
    //
    // This endpoint allows the client to retrieve a list of readinglist reactions along with the related article for the authenticated user.  Reading list will be in reverse chronological order base on the creation of the reaction.  It will return paginated reading list items along with the articles they refer to. By default a page will contain `30` items 
    //
    //Future<List<ReadingList>> getReadinglist({ int page, int perPage }) async 
    test('test getReadinglist', () async {
      // TODO
    });

  });
}
