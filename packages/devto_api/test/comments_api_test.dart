import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for CommentsApi
void main() {
  var instance = CommentsApi();

  group('tests for CommentsApi', () {
    // Comment
    //
    // This endpoint allows the client to retrieve a comment as well as his descendants comments.  It will return the required comment (the root) with its nested descendants as a thread.  See the format specification for further details. 
    //
    //Future<Comment> getCommentById(String id) async 
    test('test getCommentById', () async {
      // TODO
    });

    // Comments
    //
    // This endpoint allows the client to retrieve all comments belonging to an article or podcast episode as threaded conversations.  It will return the all top level comments with their nested comments as threads. See the format specification for further details. 
    //
    //Future<List<Comment>> getCommentsByArticleId({ int aId, int pId }) async 
    test('test getCommentsByArticleId', () async {
      // TODO
    });

  });
}
