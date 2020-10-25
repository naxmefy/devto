# devto_api.api.PodcastEpisodesApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPodcastEpisodes**](PodcastEpisodesApi.md#getPodcastEpisodes) | **GET** /podcast_episodes | Published podcast episodes


# **getPodcastEpisodes**
> List<PodcastEpisode> getPodcastEpisodes(page, perPage, username)

Published podcast episodes

This endpoint allows the client to retrieve a list of podcast episodes.  \"Podcast episodes\" are episodes belonging to podcasts.  It will only return active podcast episodes that belong to published podcasts available on the platform, ordered by descending publication date.  It supports pagination, each page will contain `30` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = PodcastEpisodesApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).
var username = codenewbie; // String | Using this parameter will retrieve episodes belonging to a specific podcast. 

try { 
    var result = api_instance.getPodcastEpisodes(page, perPage, username);
    print(result);
} catch (e) {
    print("Exception when calling PodcastEpisodesApi->getPodcastEpisodes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]
 **username** | **String**| Using this parameter will retrieve episodes belonging to a specific podcast.  | [optional] [default to null]

### Return type

[**List<PodcastEpisode>**](PodcastEpisode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

