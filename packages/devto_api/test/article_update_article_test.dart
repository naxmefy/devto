import 'package:devto_api/api.dart';
import 'package:test/test.dart';

// tests for ArticleUpdateArticle
void main() {
    var instance = new ArticleUpdateArticle();

  group('test ArticleUpdateArticle', () {
    // String title (default value: null)
    test('to test the property `title`', () async {
      // TODO
    });

    // The body of the article.  It can contain an optional front matter. For example  ```markdown --- title: Hello, World! published: true tags: discuss, help date: 20190701T10:00Z series: Hello series canonical_url: https://example.com/blog/hello cover_image: article_published_cover_image --- ```  `date`, `series` and `canonical_url` are optional. `date` is the publication date-time `series` is the name of the series the article belongs to `canonical_url` is the canonical URL of the article `cover_image` is the main image of the article  *If the markdown contains a front matter, it will take precedence on the equivalent params given in the payload.* 
    // String bodyMarkdown (default value: null)
    test('to test the property `bodyMarkdown`', () async {
      // TODO
    });

    // True to create a published article, false otherwise. Defaults to false 
    // bool published (default value: null)
    test('to test the property `published`', () async {
      // TODO
    });

    // Article series name.  All articles belonging to the same series need to have the same name in this parameter.  To remove an article from a series, the `null` value can be used. 
    // String series (default value: null)
    test('to test the property `series`', () async {
      // TODO
    });

    // String mainImage (default value: null)
    test('to test the property `mainImage`', () async {
      // TODO
    });

    // String canonicalUrl (default value: null)
    test('to test the property `canonicalUrl`', () async {
      // TODO
    });

    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Only users belonging to an organization can assign the article to it 
    // int organizationId (default value: null)
    test('to test the property `organizationId`', () async {
      // TODO
    });


  });

}
