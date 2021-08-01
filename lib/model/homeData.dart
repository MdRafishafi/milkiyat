import 'dart:convert';

HomeData homeDataFromJson(String str) => HomeData.fromJson(json.decode(str));

class HomeData {
  HomeData({
    this.categories,
    this.data,
    this.transacts,
    this.backgroundImages,
  });

  List<CategoryElement> categories;
  List<Datum> data;
  List<Transact> transacts;
  List<BackgroundImage> backgroundImages;

  factory HomeData.fromJson(Map<String, dynamic> json) => HomeData(
        categories: List<CategoryElement>.from(
            json["categories"].map((x) => CategoryElement.fromJson(x))),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        transacts: List<Transact>.from(
            json["transacts"].map((x) => Transact.fromJson(x))),
        backgroundImages: List<BackgroundImage>.from(
            json["background_images"].map((x) => BackgroundImage.fromJson(x))),
      );
}

class BackgroundImage {
  BackgroundImage({
    this.title,
    this.image,
    this.id,
  });

  String title;
  String image;
  int id;

  factory BackgroundImage.fromJson(Map<String, dynamic> json) =>
      BackgroundImage(
        title: json["title"],
        image: json["image"],
        id: json["id"],
      );
}

class CategoryElement {
  CategoryElement({
    this.name,
    this.slug,
    this.icon,
  });

  String name;
  String slug;
  String icon;

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      CategoryElement(
        name: json["name"],
        slug: json["slug"],
        icon: json["icon"],
      );
}

class Datum {
  Datum({
    this.type,
    this.items,
    this.title,
    this.summary,
    this.icon,
    this.twoLine,
    this.seeAll,
  });

  String type;
  List<Item> items;
  String title;
  String summary;
  int icon;
  bool twoLine;
  String seeAll;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        type: json["type"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        title: json["title"] == null ? null : json["title"],
        summary: json["summary"] == null ? null : json["summary"],
        icon: json["icon"] == null ? null : json["icon"],
        twoLine: json["two_line"] == null ? null : json["two_line"],
        seeAll: json["see_all"] == null ? null : json["see_all"],
      );
}

class Item {
  Item({
    this.title,
    this.image,
    this.link,
    this.minPrice,
    this.price,
    this.listingId,
    this.createdSince,
    this.updatedSince,
    this.category,
    this.categorySlug,
    this.slug,
    this.attributes,
    this.thumbnail,
    this.isSpam,
    this.isPremium,
    this.isVerified,
    this.expiryDate,
    this.offer,
    this.isChatAllowed,
    this.isOffensive,
    this.isAuction,
    this.outKashmir,
    this.locality,
    this.city,
    this.posted,
    this.transact,
    this.inWishlist,
  });

  String title;
  String image;
  String link;
  double minPrice;
  double price;
  String listingId;
  String createdSince;
  String updatedSince;
  ItemCategory category;
  String categorySlug;
  String slug;
  List<Attribute> attributes;
  String thumbnail;
  bool isSpam;
  bool isPremium;
  bool isVerified;
  String expiryDate;
  dynamic offer;
  bool isChatAllowed;
  bool isOffensive;
  bool isAuction;
  bool outKashmir;
  String locality;
  String city;
  int posted;
  Transact transact;
  bool inWishlist;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        title: json["title"],
        image: json["image"] == null ? null : json["image"],
        link: json["link"] == null ? null : json["link"],
        minPrice: json["min_price"] == null ? null : json["min_price"],
        price: json["price"] == null ? null : json["price"],
        listingId: json["listing_id"] == null ? null : json["listing_id"],
        createdSince:
            json["created_since"] == null ? null : json["created_since"],
        updatedSince:
            json["updated_since"] == null ? null : json["updated_since"],
        category: json["category"] == null
            ? null
            : ItemCategory.fromJson(json["category"]),
        categorySlug:
            json["category_slug"] == null ? null : json["category_slug"],
        slug: json["slug"] == null ? null : json["slug"],
        attributes: json["attributes"] == null
            ? null
            : List<Attribute>.from(
                json["attributes"].map((x) => Attribute.fromJson(x))),
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        isSpam: json["is_spam"] == null ? null : json["is_spam"],
        isPremium: json["is_premium"] == null ? null : json["is_premium"],
        isVerified: json["is_verified"] == null ? null : json["is_verified"],
        expiryDate: json["expiry_date"] == null ? null : json["expiry_date"],
        offer: json["offer"],
        isChatAllowed:
            json["is_chat_allowed"] == null ? null : json["is_chat_allowed"],
        isOffensive: json["is_offensive"] == null ? null : json["is_offensive"],
        isAuction: json["is_auction"] == null ? null : json["is_auction"],
        outKashmir: json["out_kashmir"] == null ? null : json["out_kashmir"],
        locality: json["locality"] == null ? null : json["locality"],
        city: json["city"] == null ? null : json["city"],
        posted: json["posted"] == null ? null : json["posted"],
        transact: json["transact"] == null
            ? null
            : Transact.fromJson(json["transact"]),
        inWishlist: json["in_wishlist"] == null ? null : json["in_wishlist"],
      );
}

class Attribute {
  Attribute({
    this.id,
    this.key,
    this.keyId,
    this.value,
    this.required,
    this.ordering,
    this.unit,
  });

  int id;
  String key;
  int keyId;
  String value;
  bool required;
  int ordering;
  String unit;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        key: json["key"],
        keyId: json["key_id"],
        value: json["value"],
        required: json["required"],
        ordering: json["ordering"],
        unit: json["unit"] == null ? null : json["unit"],
      );
}

class ItemCategory {
  ItemCategory({
    this.name,
    this.slug,
    this.id,
    this.description,
    this.icon,
  });

  String name;
  String slug;
  int id;
  String description;
  String icon;

  factory ItemCategory.fromJson(Map<String, dynamic> json) => ItemCategory(
        name: json["name"],
        slug: json["slug"],
        id: json["id"],
        description: json["description"],
        icon: json["icon"],
      );
}

class Transact {
  Transact({
    this.name,
    this.id,
    this.slug,
    this.labelSeller,
    this.labelBuyer,
    this.icon,
    this.priceUnit,
  });

  String name;
  int id;
  String slug;
  String labelSeller;
  String labelBuyer;
  String icon;
  dynamic priceUnit;

  factory Transact.fromJson(Map<String, dynamic> json) => Transact(
        name: json["name"],
        id: json["id"],
        slug: json["slug"],
        labelSeller: json["label_seller"],
        labelBuyer: json["label_buyer"],
        icon: json["icon"],
        priceUnit: json["price_unit"],
      );
}
