# devto_api.api.CommentsApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCommentById**](CommentsApi.md#getCommentById) | **GET** /comments/{id} | Comment
[**getCommentsByArticleId**](CommentsApi.md#getCommentsByArticleId) | **GET** /comments | Comments


# **getCommentById**
> Comment getCommentById(id)

Comment

This endpoint allows the client to retrieve a comment as well as his descendants comments.  It will return the required comment (the root) with its nested descendants as a thread.  See the format specification for further details. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = CommentsApi();
var id = m35m; // String | Comment identifier.

try { 
    var result = api_instance.getCommentById(id);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->getCommentById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Comment identifier. | [default to null]

### Return type

[**Comment**](Comment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommentsByArticleId**
> List<Comment> getCommentsByArticleId(aId, pId)

Comments

This endpoint allows the client to retrieve all comments belonging to an article or podcast episode as threaded conversations.  It will return the all top level comments with their nested comments as threads. See the format specification for further details. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = CommentsApi();
var aId = 270180; // int | Article identifier.
var pId = 124; // int | Podcast Episode identifier.

try { 
    var result = api_instance.getCommentsByArticleId(aId, pId);
    print(result);
} catch (e) {
    print("Exception when calling CommentsApi->getCommentsByArticleId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aId** | **int**| Article identifier. | [optional] [default to null]
 **pId** | **int**| Podcast Episode identifier. | [optional] [default to null]

### Return type

[**List<Comment>**](Comment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

