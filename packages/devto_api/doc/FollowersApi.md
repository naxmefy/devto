# devto_api.api.FollowersApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFollowers**](FollowersApi.md#getFollowers) | **GET** /followers/users | Followers


# **getFollowers**
> List<Follower> getFollowers(page, perPage)

Followers

This endpoint allows the client to retrieve a list of the followers they have.  \"Followers\" are users that are following other users on the website.  It supports pagination, each page will contain `80` followers by default. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = FollowersApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getFollowers(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling FollowersApi->getFollowers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 80]

### Return type

[**List<Follower>**](Follower.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

