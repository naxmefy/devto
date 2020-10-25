part of devto_api.api;



class CommentsApi {
  final ApiClient apiClient;

  CommentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Comment with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a comment as well as his descendants comments.  It will return the required comment (the root) with its nested descendants as a thread.  See the format specification for further details. 
  Future<Response> getCommentByIdWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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

  /// Comment
  ///
  /// This endpoint allows the client to retrieve a comment as well as his descendants comments.  It will return the required comment (the root) with its nested descendants as a thread.  See the format specification for further details. 
  Future<Comment> getCommentById(String id) async {
    Response response = await getCommentByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Comment') as Comment;
    } else {
      return null;
    }
  }

  /// Comments with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve all comments belonging to an article or podcast episode as threaded conversations.  It will return the all top level comments with their nested comments as threads. See the format specification for further details. 
  Future<Response> getCommentsByArticleIdWithHttpInfo({ int aId, int pId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/comments".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(aId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "a_id", aId));
    }
    if(pId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "p_id", pId));
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

  /// Comments
  ///
  /// This endpoint allows the client to retrieve all comments belonging to an article or podcast episode as threaded conversations.  It will return the all top level comments with their nested comments as threads. See the format specification for further details. 
  Future<List<Comment>> getCommentsByArticleId({ int aId, int pId }) async {
    Response response = await getCommentsByArticleIdWithHttpInfo( aId: aId, pId: pId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Comment>') as List).map((item) => item as Comment).toList();
    } else {
      return null;
    }
  }

}
