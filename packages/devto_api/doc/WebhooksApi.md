# devto_api.api.WebhooksApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhooksApi.md#createWebhook) | **POST** /webhooks | Create a new webhook
[**deleteWebhook**](WebhooksApi.md#deleteWebhook) | **DELETE** /webhooks/{id} | A webhook endpoint
[**getWebhookById**](WebhooksApi.md#getWebhookById) | **GET** /webhooks/{id} | A webhook endpoint
[**getWebhooks**](WebhooksApi.md#getWebhooks) | **GET** /webhooks | Webhooks


# **createWebhook**
> WebhookShow createWebhook(webhookCreate)

Create a new webhook

This endpoint allows the client to create a new webhook.  \"Webhooks\" are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like `article_created`, `article_updated`. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WebhooksApi();
var webhookCreate = WebhookCreate(); // WebhookCreate | Webhook to create

try { 
    var result = api_instance.createWebhook(webhookCreate);
    print(result);
} catch (e) {
    print("Exception when calling WebhooksApi->createWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookCreate** | [**WebhookCreate**](WebhookCreate.md)| Webhook to create | [optional] 

### Return type

[**WebhookShow**](WebhookShow.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
> deleteWebhook(id)

A webhook endpoint

This endpoint allows the client to delete a single webhook given its `id`. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WebhooksApi();
var id = 123; // int | Id of the webhook

try { 
    api_instance.deleteWebhook(id);
} catch (e) {
    print("Exception when calling WebhooksApi->deleteWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the webhook | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookById**
> WebhookShow getWebhookById(id)

A webhook endpoint

This endpoint allows the client to retrieve a single webhook given its `id`. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WebhooksApi();
var id = 123; // int | Id of the webhook

try { 
    var result = api_instance.getWebhookById(id);
    print(result);
} catch (e) {
    print("Exception when calling WebhooksApi->getWebhookById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the webhook | [default to null]

### Return type

[**WebhookShow**](WebhookShow.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhooks**
> List<WebhookIndex> getWebhooks()

Webhooks

This endpoint allows the client to retrieve a list of webhooks they have previously registered.  \"Webhooks\" are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like `article_created`, `article_updated`.  It will return all webhooks, without pagination. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WebhooksApi();

try { 
    var result = api_instance.getWebhooks();
    print(result);
} catch (e) {
    print("Exception when calling WebhooksApi->getWebhooks: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<WebhookIndex>**](WebhookIndex.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

