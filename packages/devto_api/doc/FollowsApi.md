# devto_api.api.FollowsApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFollowedTags**](FollowsApi.md#getFollowedTags) | **GET** /follows/tags | Followed tags


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

var api_instance = FollowsApi();

try { 
    var result = api_instance.getFollowedTags();
    print(result);
} catch (e) {
    print("Exception when calling FollowsApi->getFollowedTags: $e\n");
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

