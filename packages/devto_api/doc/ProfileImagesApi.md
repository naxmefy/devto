# devto_api.api.ProfileImagesApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProfileImage**](ProfileImagesApi.md#getProfileImage) | **GET** /profile_images/{username} | User or organization profile picture


# **getProfileImage**
> ProfileImage getProfileImage(username)

User or organization profile picture

This endpoint allows the client to retrieve a user or organization profile image information by its corresponding username 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ProfileImagesApi();
var username = diogoosorio; // String | Username of the user or organization

try { 
    var result = api_instance.getProfileImage(username);
    print(result);
} catch (e) {
    print("Exception when calling ProfileImagesApi->getProfileImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username of the user or organization | [default to null]

### Return type

[**ProfileImage**](ProfileImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

