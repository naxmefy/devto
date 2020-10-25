part of devto_api.api;



class ReadinglistApi {
  final ApiClient apiClient;

  ReadinglistApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// User&#39;s reading list with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of readinglist reactions along with the related article for the authenticated user.  Reading list will be in reverse chronological order base on the creation of the reaction.  It will return paginated reading list items along with the articles they refer to. By default a page will contain &#x60;30&#x60; items 
  Future<Response> getReadinglistWithHttpInfo({ int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/readinglist".replaceAll("{format}","json");

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
    List<String> authNames = ["api_key", "oauth2"];

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

  /// User&#39;s reading list
  ///
  /// This endpoint allows the client to retrieve a list of readinglist reactions along with the related article for the authenticated user.  Reading list will be in reverse chronological order base on the creation of the reaction.  It will return paginated reading list items along with the articles they refer to. By default a page will contain &#x60;30&#x60; items 
  Future<List<ReadingList>> getReadinglist({ int page, int perPage }) async {
    Response response = await getReadinglistWithHttpInfo( page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReadingList>') as List).map((item) => item as ReadingList).toList();
    } else {
      return null;
    }
  }

}
