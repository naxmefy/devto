part of devto_api.api;



class VideosApi {
  final ApiClient apiClient;

  VideosApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Articles with a video with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain &#x60;24&#x60; articles by default. 
  Future<Response> getArticlesWithVideoWithHttpInfo({ int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/videos".replaceAll("{format}","json");

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

  /// Articles with a video
  ///
  /// This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain &#x60;24&#x60; articles by default. 
  Future<List<ArticleVideo>> getArticlesWithVideo({ int page, int perPage }) async {
    Response response = await getArticlesWithVideoWithHttpInfo( page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ArticleVideo>') as List).map((item) => item as ArticleVideo).toList();
    } else {
      return null;
    }
  }

}
