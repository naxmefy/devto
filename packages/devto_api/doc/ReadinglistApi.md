# devto_api.api.ReadinglistApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReadinglist**](ReadinglistApi.md#getReadinglist) | **GET** /readinglist | User&#39;s reading list


# **getReadinglist**
> List<ReadingList> getReadinglist(page, perPage)

User's reading list

This endpoint allows the client to retrieve a list of readinglist reactions along with the related article for the authenticated user.  Reading list will be in reverse chronological order base on the creation of the reaction.  It will return paginated reading list items along with the articles they refer to. By default a page will contain `30` items 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReadinglistApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getReadinglist(page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ReadinglistApi->getReadinglist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<ReadingList>**](ReadingList.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

