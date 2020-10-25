# devto_api.model.ListingCreateListing

## Load the model package
```dart
import 'package:devto_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [default to null]
**bodyMarkdown** | **String** | The body of the listing in Markdown format. | [default to null]
**category** | [**ListingCategory**](ListingCategory.md) |  | [default to null]
**tags** | **List&lt;String&gt;** | Tags related to the listing.  A maximum of 8 tags are allowed and it takes precedence over &#x60;tag_list&#x60;.  | [optional] [default to []]
**tagList** | **String** | Comma separated list of tags.  A maximum of 8 tags are allowed.  | [optional] [default to null]
**expiresAt** | [**DateTime**](DateTime.md) | Date and time of expiration. | [optional] [default to null]
**contactViaConnect** | **bool** | True if users are allowed to contact the listing&#39;s owner via DEV connect, false otherwise.  Defaults to false.  | [optional] [default to null]
**location** | **String** | Geographical area or city for the listing. | [optional] [default to null]
**organizationId** | **int** | The id of the organization the user is creating the listing for.  Only users belonging to an organization can assign the listing to it.  | [optional] [default to null]
**action** | **String** | Set it to \&quot;draft\&quot; to create an unpublished listing | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


