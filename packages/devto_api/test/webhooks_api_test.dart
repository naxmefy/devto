import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for WebhooksApi
void main() {
  var instance = WebhooksApi();

  group('tests for WebhooksApi', () {
    // Create a new webhook
    //
    // This endpoint allows the client to create a new webhook.  \"Webhooks\" are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like `article_created`, `article_updated`. 
    //
    //Future<WebhookShow> createWebhook({ WebhookCreate webhookCreate }) async 
    test('test createWebhook', () async {
      // TODO
    });

    // A webhook endpoint
    //
    // This endpoint allows the client to delete a single webhook given its `id`. 
    //
    //Future deleteWebhook(int id) async 
    test('test deleteWebhook', () async {
      // TODO
    });

    // A webhook endpoint
    //
    // This endpoint allows the client to retrieve a single webhook given its `id`. 
    //
    //Future<WebhookShow> getWebhookById(int id) async 
    test('test getWebhookById', () async {
      // TODO
    });

    // Webhooks
    //
    // This endpoint allows the client to retrieve a list of webhooks they have previously registered.  \"Webhooks\" are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like `article_created`, `article_updated`.  It will return all webhooks, without pagination. 
    //
    //Future<List<WebhookIndex>> getWebhooks() async 
    test('test getWebhooks', () async {
      // TODO
    });

  });
}
