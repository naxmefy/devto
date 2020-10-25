# devto_api.api.VideosApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getArticlesWithVideo**](VideosApi.md#getArticlesWithVideo) | **GET** /videos | Articles with a video


# **getArticlesWithVideo**
> List<ArticleVideo> getArticlesWithVideo(page, perPage)

Articles with a video

This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain `24` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = VideosApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getArticlesWithVideo(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling VideosApi->getArticlesWithVideo: $e\n");
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

