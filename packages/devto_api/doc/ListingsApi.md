# devto_api.api.ListingsApi

## Load the API package
```dart
import 'package:devto_api/api.dart';
```

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createListing**](ListingsApi.md#createListing) | **POST** /listings | Create a new listing
[**getListingById**](ListingsApi.md#getListingById) | **GET** /listings/{id} | A listing
[**getListings**](ListingsApi.md#getListings) | **GET** /listings | Published listings
[**getListingsByCategory**](ListingsApi.md#getListingsByCategory) | **GET** /listings/category/{category} | Published listings by category
[**updateListing**](ListingsApi.md#updateListing) | **PUT** /listings/{id} | Update a listing


# **createListing**
> Listing createListing(listingCreate)

Create a new listing

This endpoint allows the client to create a new listing.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  The user creating the listing or the organization on which behalf the user is creating for need to have enough creadits for this operation to be successful. The server will prioritize the organization's credits over the user's credits.  ### Additional resources  - [Rails tests for Listings API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/listings_spec.rb) 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = ListingsApi();
var listingCreate = ListingCreate(); // ListingCreate | Listing to create

try { 
    var result = api_instance.createListing(listingCreate);
    print(result);
} catch (e) {
    print("Exception when calling ListingsApi->createListing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listingCreate** | [**ListingCreate**](ListingCreate.md)| Listing to create | [optional] 

### Return type

[**Listing**](Listing.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingById**
> Listing getListingById(id)

A listing

This endpoint allows the client to retrieve a single listing given its `id`.  An unpublished listing is only accessible if authentication is supplied and it belongs to the authenticated user. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = ListingsApi();
var id = 1; // int | Id of the listing

try { 
    var result = api_instance.getListingById(id);
    print(result);
} catch (e) {
    print("Exception when calling ListingsApi->getListingById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the listing | [default to null]

### Return type

[**Listing**](Listing.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListings**
> List<Listing> getListings(page, perPage, category)

Published listings

This endpoint allows the client to retrieve a list of listings.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain `30` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ListingsApi();
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).
var category = cfp; // String | Using this parameter will return listings belonging to the requested category. 

try { 
    var result = api_instance.getListings(page, perPage, category);
    print(result);
} catch (e) {
    print("Exception when calling ListingsApi->getListings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]
 **category** | **String**| Using this parameter will return listings belonging to the requested category.  | [optional] [default to null]

### Return type

[**List<Listing>**](Listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingsByCategory**
> List<Listing> getListingsByCategory(category, page, perPage)

Published listings by category

This endpoint allows the client to retrieve a list of listings belonging to the specified category.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain `30` articles by default. 

### Example 
```dart
import 'package:devto_api/api.dart';

var api_instance = ListingsApi();
var category = ; // ListingCategory | The category of the listing
var page = 56; // int | Pagination page.
var perPage = 56; // int | Page size (the number of items to return per page).

try { 
    var result = api_instance.getListingsByCategory(category, page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling ListingsApi->getListingsByCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**ListingCategory**](.md)| The category of the listing | [default to null]
 **page** | **int**| Pagination page. | [optional] [default to 1]
 **perPage** | **int**| Page size (the number of items to return per page). | [optional] [default to 30]

### Return type

[**List<Listing>**](Listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateListing**
> ArticleShow updateListing(id, listingUpdate)

Update a listing

This endpoint allows the client to update an existing listing. 

### Example 
```dart
import 'package:devto_api/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = ListingsApi();
var id = 1; // int | Id of the listing
var listingUpdate = ListingUpdate(); // ListingUpdate | Listing params for the update.  **Note**: except for bumping, publishing and unpublishing there are the following restrictions on the ability to update listings:  - the payload has to contain at least one param among `title`, `body_markdown` or `tags`/`tag_list` - the listing can't be updated if it has not been bumped in the last 24 hours - the listing can't be updated if it has been published but not recently bumped 

try { 
    var result = api_instance.updateListing(id, listingUpdate);
    print(result);
} catch (e) {
    print("Exception when calling ListingsApi->updateListing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the listing | [default to null]
 **listingUpdate** | [**ListingUpdate**](ListingUpdate.md)| Listing params for the update.  **Note**: except for bumping, publishing and unpublishing there are the following restrictions on the ability to update listings:  - the payload has to contain at least one param among &#x60;title&#x60;, &#x60;body_markdown&#x60; or &#x60;tags&#x60;/&#x60;tag_list&#x60; - the listing can&#39;t be updated if it has not been bumped in the last 24 hours - the listing can&#39;t be updated if it has been published but not recently bumped  | [optional] 

### Return type

[**ArticleShow**](ArticleShow.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

