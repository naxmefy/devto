import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  var instance = UsersApi();

  group('tests for UsersApi', () {
    // A user
    //
    // This endpoint allows the client to retrieve a single user, either by id or by the user's username 
    //
    //Future<User> getUser(String id, { String url }) async 
    test('test getUser', () async {
      // TODO
    });

    // User's all articles
    //
    // This endpoint allows the client to retrieve a list of all articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  It will return both published and unpublished articles with pagination.  Unpublished articles will be at the top of the list in reverse chronological creation order. Published articles will follow in reverse chronological publication order.  By default a page will contain `30` articles. 
    //
    //Future<List<ArticleMe>> getUserAllArticles({ int page, int perPage }) async 
    test('test getUserAllArticles', () async {
      // TODO
    });

    // User's articles
    //
    // This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain `30` articles. 
    //
    //Future<List<ArticleMe>> getUserArticles({ int page, int perPage }) async 
    test('test getUserArticles', () async {
      // TODO
    });

    // The authenticated user
    //
    // This endpoint allows the client to retrieve information about the authenticated user 
    //
    //Future<User> getUserMe() async 
    test('test getUserMe', () async {
      // TODO
    });

    // User's published articles
    //
    // This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain `30` articles. 
    //
    //Future<List<ArticleMe>> getUserPublishedArticles({ int page, int perPage }) async 
    test('test getUserPublishedArticles', () async {
      // TODO
    });

    // User's unpublished articles
    //
    // This endpoint allows the client to retrieve a list of unpublished articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Unpublished articles will be in reverse chronological creation order.  It will return unpublished articles with pagination. By default a page will contain `30` articles. 
    //
    //Future<List<ArticleMe>> getUserUnpublishedArticles({ int page, int perPage }) async 
    test('test getUserUnpublishedArticles', () async {
      // TODO
    });

  });
}
