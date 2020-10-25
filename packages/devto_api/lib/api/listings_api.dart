part of devto_api.api;



class ListingsApi {
  final ApiClient apiClient;

  ListingsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new listing with HTTP info returned
  ///
  /// This endpoint allows the client to create a new listing.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  The user creating the listing or the organization on which behalf the user is creating for need to have enough creadits for this operation to be successful. The server will prioritize the organization&#39;s credits over the user&#39;s credits.  ### Additional resources  - [Rails tests for Listings API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/listings_spec.rb) 
  Future<Response> createListingWithHttpInfo({ ListingCreate listingCreate }) async {
    Object postBody = listingCreate;

    // verify required params are set

    // create path and map variables
    String path = "/listings".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create a new listing
  ///
  /// This endpoint allows the client to create a new listing.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  The user creating the listing or the organization on which behalf the user is creating for need to have enough creadits for this operation to be successful. The server will prioritize the organization&#39;s credits over the user&#39;s credits.  ### Additional resources  - [Rails tests for Listings API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/listings_spec.rb) 
  Future<Listing> createListing({ ListingCreate listingCreate }) async {
    Response response = await createListingWithHttpInfo( listingCreate: listingCreate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Listing') as Listing;
    } else {
      return null;
    }
  }

  /// A listing with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a single listing given its &#x60;id&#x60;.  An unpublished listing is only accessible if authentication is supplied and it belongs to the authenticated user. 
  Future<Response> getListingByIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/listings/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// A listing
  ///
  /// This endpoint allows the client to retrieve a single listing given its &#x60;id&#x60;.  An unpublished listing is only accessible if authentication is supplied and it belongs to the authenticated user. 
  Future<Listing> getListingById(int id) async {
    Response response = await getListingByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Listing') as Listing;
    } else {
      return null;
    }
  }

  /// Published listings with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of listings.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<Response> getListingsWithHttpInfo({ int page, int perPage, String category }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/listings".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Published listings
  ///
  /// This endpoint allows the client to retrieve a list of listings.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<List<Listing>> getListings({ int page, int perPage, String category }) async {
    Response response = await getListingsWithHttpInfo( page: page, perPage: perPage, category: category );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Listing>') as List).map((item) => item as Listing).toList();
    } else {
      return null;
    }
  }

  /// Published listings by category with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of listings belonging to the specified category.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<Response> getListingsByCategoryWithHttpInfo(ListingCategory category, { int page, int perPage }) async {
    Object postBody;

    // verify required params are set
    if(category == null) {
     throw ApiException(400, "Missing required param: category");
    }

    // create path and map variables
    String path = "/listings/category/{category}".replaceAll("{format}","json").replaceAll("{" + "category" + "}", category.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Published listings by category
  ///
  /// This endpoint allows the client to retrieve a list of listings belonging to the specified category.  \&quot;Listings\&quot; are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<List<Listing>> getListingsByCategory(ListingCategory category, { int page, int perPage }) async {
    Response response = await getListingsByCategoryWithHttpInfo(category,  page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Listing>') as List).map((item) => item as Listing).toList();
    } else {
      return null;
    }
  }

  /// Update a listing with HTTP info returned
  ///
  /// This endpoint allows the client to update an existing listing. 
  Future<Response> updateListingWithHttpInfo(int id, { ListingUpdate listingUpdate }) async {
    Object postBody = listingUpdate;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/listings/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Update a listing
  ///
  /// This endpoint allows the client to update an existing listing. 
  Future<ArticleShow> updateListing(int id, { ListingUpdate listingUpdate }) async {
    Response response = await updateListingWithHttpInfo(id,  listingUpdate: listingUpdate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ArticleShow') as ArticleShow;
    } else {
      return null;
    }
  }

}
