import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for ArticlesApi
void main() {
  var instance = ArticlesApi();

  group('tests for ArticlesApi', () {
    // Create a new article
    //
    // This endpoint allows the client to create a new article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  ### Rate limiting  There is a limit of 10 requests per 30 seconds.  ### Additional resources  - [Rails tests for Articles API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/articles_spec.rb) 
    //
    //Future<ArticleShow> createArticle({ ArticleCreate articleCreate }) async 
    test('test createArticle', () async {
      // TODO
    });

    // A published article by ID
    //
    // This endpoint allows the client to retrieve a single published article given its `id`. 
    //
    //Future<ArticleShow> getArticleById(int id) async 
    test('test getArticleById', () async {
      // TODO
    });

    // A published article by path
    //
    // This endpoint allows the client to retrieve a single published article given its `path`. 
    //
    //Future<ArticleShow> getArticleByPath(String username, String slug) async 
    test('test getArticleByPath', () async {
      // TODO
    });

    // Published articles
    //
    // This endpoint allows the client to retrieve a list of articles.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  By default it will return featured, published articles ordered by descending popularity.  It supports pagination, each page will contain `30` articles by default. 
    //
    //Future<List<ArticleIndex>> getArticles({ int page, int perPage, String tag, String tags, String tagsExclude, String username, String state, int top, int collectionId }) async 
    test('test getArticles', () async {
      // TODO
    });

    // Articles with a video
    //
    // This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain `24` articles by default. 
    //
    //Future<List<ArticleVideo>> getArticlesWithVideo({ int page, int perPage }) async 
    test('test getArticlesWithVideo', () async {
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

    // Update an article
    //
    // This endpoint allows the client to update an existing article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  ### Rate limiting  There is a limit of 30 requests per 30 seconds.  ### Additional resources  - [Rails tests for Articles API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/articles_spec.rb) 
    //
    //Future<ArticleShow> updateArticle(int id, { ArticleUpdate articleUpdate }) async 
    test('test updateArticle', () async {
      // TODO
    });

  });
}
