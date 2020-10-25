part of devto_api.api;



class TagsApi {
  final ApiClient apiClient;

  TagsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Followed tags with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of the tags they follow. 
  Future<Response> getFollowedTagsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/follows/tags".replaceAll("{format}","json");

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

  /// Followed tags
  ///
  /// This endpoint allows the client to retrieve a list of the tags they follow. 
  Future<List<FollowedTag>> getFollowedTags() async {
    Response response = await getFollowedTagsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<FollowedTag>') as List).map((item) => item as FollowedTag).toList();
    } else {
      return null;
    }
  }

  /// Tags with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain &#x60;10&#x60; tags by default. 
  Future<Response> getTagsWithHttpInfo({ int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/tags".replaceAll("{format}","json");

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

  /// Tags
  ///
  /// This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain &#x60;10&#x60; tags by default. 
  Future<List<Tag>> getTags({ int page, int perPage }) async {
    Response response = await getTagsWithHttpInfo( page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Tag>') as List).map((item) => item as Tag).toList();
    } else {
      return null;
    }
  }

}
