part of devto_api.api;



class FollowersApi {
  final ApiClient apiClient;

  FollowersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Followers with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of the followers they have.  \&quot;Followers\&quot; are users that are following other users on the website.  It supports pagination, each page will contain &#x60;80&#x60; followers by default. 
  Future<Response> getFollowersWithHttpInfo({ int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/followers/users".replaceAll("{format}","json");

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

  /// Followers
  ///
  /// This endpoint allows the client to retrieve a list of the followers they have.  \&quot;Followers\&quot; are users that are following other users on the website.  It supports pagination, each page will contain &#x60;80&#x60; followers by default. 
  Future<List<Follower>> getFollowers({ int page, int perPage }) async {
    Response response = await getFollowersWithHttpInfo( page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Follower>') as List).map((item) => item as Follower).toList();
    } else {
      return null;
    }
  }

}
