import 'package:devto_api/api.dart';
import 'package:test/test.dart';

// tests for ListingUpdateListing
void main() {
    var instance = new ListingUpdateListing();

  group('test ListingUpdateListing', () {
    // String title (default value: null)
    test('to test the property `title`', () async {
      // TODO
    });

    // The body of the listing in Markdown format.
    // String bodyMarkdown (default value: null)
    test('to test the property `bodyMarkdown`', () async {
      // TODO
    });

    // ListingCategory category (default value: null)
    test('to test the property `category`', () async {
      // TODO
    });

    // Tags related to the listing.  A maximum of 8 tags are allowed and it takes precedence over `tag_list`. 
    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Comma separated list of tags.  A maximum of 8 tags are allowed. 
    // String tagList (default value: null)
    test('to test the property `tagList`', () async {
      // TODO
    });

    // Date and time of expiration.
    // DateTime expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // True if users are allowed to contact the listing's owner via DEV connect, false otherwise.  Defaults to false. 
    // bool contactViaConnect (default value: null)
    test('to test the property `contactViaConnect`', () async {
      // TODO
    });

    // Geographical area or city for the listing.
    // String location (default value: null)
    test('to test the property `location`', () async {
      // TODO
    });

    // This param can be provided by itself to invoke some actions:  - `bump` bumps the listing and charge either the   organization or the user - `publish` publishes a draft listing - `unpublish` unpublishes a published listing  It will take priority on any other param in the payload. 
    // String action (default value: null)
    test('to test the property `action`', () async {
      // TODO
    });


  });

}
