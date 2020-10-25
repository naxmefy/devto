# devto_api.api.ArticlesApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticle**](ArticlesApi.md#createArticle) | **POST** /articles | Create a new article
[**getArticleById**](ArticlesApi.md#getArticleById) | **GET** /articles/{id} | A published article by ID
[**getArticleByPath**](ArticlesApi.md#getArticleByPath) | **GET** /articles/{username}/{slug} | A published article by path
[**getArticles**](ArticlesApi.md#getArticles) | **GET** /articles | Published articles
[**getArticlesWithVideo**](ArticlesApi.md#getArticlesWithVideo) | **GET** /videos | Articles with a video
[**getUserAllArticles**](ArticlesApi.md#getUserAllArticles) | **GET** /articles/me/all | User&#39;s all articles
[**getUserArticles**](ArticlesApi.md#getUserArticles) | **GET** /articles/me | User&#39;s articles
[**getUserPublishedArticles**](ArticlesApi.md#getUserPublishedArticles) | **GET** /articles/me/published | User&#39;s published articles
[**getUserUnpublishedArticles**](ArticlesApi.md#getUserUnpublishedArticles) | **GET** /articles/me/unpublished | User&#39;s unpublished articles
[**updateArticle**](ArticlesApi.md#updateArticle) | **PUT** /articles/{id} | Update an article


# **createArticle**
> ArticleShow createArticle(articleCreate)

Create a new article

This endpoint allows the client to create a new article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  ### Rate limiting  There is a limit of 10 requests per 30 seconds.  ### Additional resources  - [Rails tests for Articles API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/articles_spec.rb) 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var articleCreate = ArticleCreate(); // ArticleCreate | Article to create

try { 
    var result = api_instance.createArticle(articleCreate);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->createArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleCreate** | [**ArticleCreate**](ArticleCreate.md)| Article to create | [optional] 

### Return type

[**ArticleShow**](ArticleShow.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleById**
> ArticleShow getArticleById(id)

A published article by ID

This endpoint allows the client to retrieve a single published article given its `id`. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ArticlesApi();
var id = 150589; // int | Id of the article

try { 
    var result = api_instance.getArticleById(id);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getArticleById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the article | [default to null]

### Return type

[**ArticleShow**](ArticleShow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleByPath**
> ArticleShow getArticleByPath(username, slug)

A published article by path

This endpoint allows the client to retrieve a single published article given its `path`. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ArticlesApi();
var username = devteam; // String | User or organization username.
var slug = for-empowering-community-2k6h; // String | Slug of the article.

try { 
    var result = api_instance.getArticleByPath(username, slug);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getArticleByPath: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| User or organization username. | [default to null]
 **slug** | **String**| Slug of the article. | [default to null]

### Return type

[**ArticleShow**](ArticleShow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticles**
> List<ArticleIndex> getArticles(page, perPage, tag, tags, tagsExclude, username, state, top, collectionId)

Published articles

This endpoint allows the client to retrieve a list of articles.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  By default it will return featured, published articles ordered by descending popularity.  It supports pagination, each page will contain `30` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).
var tag = discuss; // String | Using this parameter will retrieve articles that contain the requested tag.  Articles will be ordered by descending popularity.  This parameter can be used in conjuction with `top`. 
var tags = javascript, css; // String | Using this parameter will retrieve articles with any of the comma-separated tags.  Articles will be ordered by descending popularity. 
var tagsExclude = node, java; // String | Using this parameter will retrieve articles that do _not_ contain _any_ of comma-separated tags.  Articles will be ordered by descending popularity. 
var username = ben; // String | Using this parameter will retrieve articles belonging to a User or Organization ordered by descending publication date.  If `state=all` the number of items returned will be `1000` instead of the default `30`.  This parameter can be used in conjuction with `state`. 
var state = fresh; // String | Using this parameter will allow the client to check which articles are fresh or rising.  If `state=fresh` the server will return fresh articles. If `state=rising` the server will return rising articles.  This param can be used in conjuction with `username`, only if set to `all`. 
var top = 2; // int | Using this parameter will allow the client to return the most popular articles in the last `N` days.  `top` indicates the number of days since publication of the articles returned.  This param can be used in conjuction with `tag`. 
var collectionId = 99; // int | Adding this will allow the client to return the list of articles belonging to the requested collection, ordered by ascending publication date. 

try { 
    var result = api_instance.getArticles(page, perPage, tag, tags, tagsExclude, username, state, top, collectionId);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]
 **tag** | **String**| Using this parameter will retrieve articles that contain the requested tag.  Articles will be ordered by descending popularity.  This parameter can be used in conjuction with &#x60;top&#x60;.  | [optional] [default to null]
 **tags** | **String**| Using this parameter will retrieve articles with any of the comma-separated tags.  Articles will be ordered by descending popularity.  | [optional] [default to null]
 **tagsExclude** | **String**| Using this parameter will retrieve articles that do _not_ contain _any_ of comma-separated tags.  Articles will be ordered by descending popularity.  | [optional] [default to null]
 **username** | **String**| Using this parameter will retrieve articles belonging to a User or Organization ordered by descending publication date.  If &#x60;state&#x3D;all&#x60; the number of items returned will be &#x60;1000&#x60; instead of the default &#x60;30&#x60;.  This parameter can be used in conjuction with &#x60;state&#x60;.  | [optional] [default to null]
 **state** | **String**| Using this parameter will allow the client to check which articles are fresh or rising.  If &#x60;state&#x3D;fresh&#x60; the server will return fresh articles. If &#x60;state&#x3D;rising&#x60; the server will return rising articles.  This param can be used in conjuction with &#x60;username&#x60;, only if set to &#x60;all&#x60;.  | [optional] [default to null]
 **top** | **int**| Using this parameter will allow the client to return the most popular articles in the last &#x60;N&#x60; days.  &#x60;top&#x60; indicates the number of days since publication of the articles returned.  This param can be used in conjuction with &#x60;tag&#x60;.  | [optional] [default to null]
 **collectionId** | **int**| Adding this will allow the client to return the list of articles belonging to the requested collection, ordered by ascending publication date.  | [optional] [default to null]

### Return type

[**List<ArticleIndex>**](ArticleIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticlesWithVideo**
> List<ArticleVideo> getArticlesWithVideo(page, perPage)

Articles with a video

This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain `24` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getArticlesWithVideo(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getArticlesWithVideo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 24]

### Return type

[**List<ArticleVideo>**](ArticleVideo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAllArticles**
> List<ArticleMe> getUserAllArticles(page, perPage)

User's all articles

This endpoint allows the client to retrieve a list of all articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  It will return both published and unpublished articles with pagination.  Unpublished articles will be at the top of the list in reverse chronological creation order. Published articles will follow in reverse chronological publication order.  By default a page will contain `30` articles. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getUserAllArticles(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getUserAllArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<ArticleMe>**](ArticleMe.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserArticles**
> List<ArticleMe> getUserArticles(page, perPage)

User's articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain `30` articles. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getUserArticles(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getUserArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<ArticleMe>**](ArticleMe.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPublishedArticles**
> List<ArticleMe> getUserPublishedArticles(page, perPage)

User's published articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain `30` articles. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getUserPublishedArticles(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getUserPublishedArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<ArticleMe>**](ArticleMe.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUnpublishedArticles**
> List<ArticleMe> getUserUnpublishedArticles(page, perPage)

User's unpublished articles

This endpoint allows the client to retrieve a list of unpublished articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Unpublished articles will be in reverse chronological creation order.  It will return unpublished articles with pagination. By default a page will contain `30` articles. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getUserUnpublishedArticles(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->getUserUnpublishedArticles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<ArticleMe>**](ArticleMe.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArticle**
> ArticleShow updateArticle(id, articleUpdate)

Update an article

This endpoint allows the client to update an existing article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  ### Rate limiting  There is a limit of 30 requests per 30 seconds.  ### Additional resources  - [Rails tests for Articles API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/articles_spec.rb) 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ArticlesApi();
var id = 150589; // int | Id of the article
var articleUpdate = ArticleUpdate(); // ArticleUpdate | Article params for the update.  *Note: if the article contains a front matter in its body, its front matter properties will still take precedence over any JSON equivalent params, which means that the full body_markdown with the modified front matter params needs to be provided for an update to be successful* 

try { 
    var result = api_instance.updateArticle(id, articleUpdate);
    print(result);
} catch (e) {
    print("Exception when calling ArticlesApi->updateArticle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the article | [default to null]
 **articleUpdate** | [**ArticleUpdate**](ArticleUpdate.md)| Article params for the update.  *Note: if the article contains a front matter in its body, its front matter properties will still take precedence over any JSON equivalent params, which means that the full body_markdown with the modified front matter params needs to be provided for an update to be successful*  | [optional] 

### Return type

[**ArticleShow**](ArticleShow.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

