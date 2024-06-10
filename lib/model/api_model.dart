import 'dart:convert';

class ApiModel {
  final List<Content> contents;
  final String daftarLink;
  final String headerImage;
  final String textBody;
  final String title;
  final String whatsappLink;

  ApiModel({
    required this.contents,
    required this.daftarLink,
    required this.headerImage,
    required this.textBody,
    required this.title,
    required this.whatsappLink,
  });

  factory ApiModel.fromRawJson(String str) =>
      ApiModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        contents: List<Content>.from(
            json["contents"].map((x) => Content.fromJson(x))),
        daftarLink: json["daftar-link"],
        headerImage: json["header_image"],
        textBody: json["text-body"],
        title: json["title"],
        whatsappLink: json["whatsapp-link"],
      );

  Map<String, dynamic> toJson() => {
        "contents": List<dynamic>.from(contents.map((x) => x.toJson())),
        "daftar-link": daftarLink,
        "header_image": headerImage,
        "text-body": textBody,
        "title": title,
        "whatsapp-link": whatsappLink,
      };
}

class Content {
  final String title;
  final List<View> view;

  Content({
    required this.title,
    required this.view,
  });

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        title: json["title"],
        view: List<View>.from(json["view"].map((x) => View.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "view": List<dynamic>.from(view.map((x) => x.toJson())),
      };
}

class View {
  final String image;
  final String linik;
  final String title;

  View({
    required this.image,
    required this.linik,
    required this.title,
  });

  factory View.fromRawJson(String str) => View.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory View.fromJson(Map<String, dynamic> json) => View(
        image: json["image"],
        linik: json["linik"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "linik": linik,
        "title": title,
      };
}
