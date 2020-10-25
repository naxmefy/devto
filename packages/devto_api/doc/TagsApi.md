# devto_api.api.TagsApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFollowedTags**](TagsApi.md#getFollowedTags) | **GET** /follows/tags | Followed tags
[**getTags**](TagsApi.md#getTags) | **GET** /tags | Tags


# **getFollowedTags**
> List<FollowedTag> getFollowedTags()

Followed tags

This endpoint allows the client to retrieve a list of the tags they follow. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = TagsApi();

try { 
    var result = api_instance.getFollowedTags();
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->getFollowedTags: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FollowedTag>**](FollowedTag.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTags**
> List<Tag> getTags(page, perPage)

Tags

This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain `10` tags by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = TagsApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getTags(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->getTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 10]

### Return type

[**List<Tag>**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

