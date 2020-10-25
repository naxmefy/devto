part of devto_api.api;

class ListingCategory {
  /// The underlying value of this enum member.
  final String value;

  const ListingCategory._internal(this.value);

  static const ListingCategory cfp_ = const ListingCategory._internal("cfp");
  static const ListingCategory forhire_ = const ListingCategory._internal("forhire");
  static const ListingCategory collabs_ = const ListingCategory._internal("collabs");
  static const ListingCategory education_ = const ListingCategory._internal("education");
  static const ListingCategory jobs_ = const ListingCategory._internal("jobs");
  static const ListingCategory mentors_ = const ListingCategory._internal("mentors");
  static const ListingCategory products_ = const ListingCategory._internal("products");
  static const ListingCategory mentees_ = const ListingCategory._internal("mentees");
  static const ListingCategory forsale_ = const ListingCategory._internal("forsale");
  static const ListingCategory events_ = const ListingCategory._internal("events");
  static const ListingCategory misc_ = const ListingCategory._internal("misc");

  static ListingCategory fromJson(String value) {
    return new ListingCategoryTypeTransformer().decode(value);
  }
  
  static List<ListingCategory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListingCategory>() : json.map((value) => ListingCategory.fromJson(value)).toList();
  }
}

class ListingCategoryTypeTransformer {

  dynamic encode(ListingCategory data) {
    return data.value;
  }

  ListingCategory decode(dynamic data) {
    switch (data) {
      case "cfp": return ListingCategory.cfp_;
      case "forhire": return ListingCategory.forhire_;
      case "collabs": return ListingCategory.collabs_;
      case "education": return ListingCategory.education_;
      case "jobs": return ListingCategory.jobs_;
      case "mentors": return ListingCategory.mentors_;
      case "products": return ListingCategory.products_;
      case "mentees": return ListingCategory.mentees_;
      case "forsale": return ListingCategory.forsale_;
      case "events": return ListingCategory.events_;
      case "misc": return ListingCategory.misc_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

