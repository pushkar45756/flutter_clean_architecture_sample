import 'package:flutter_template/src/domain/entities/activity.dart';

class ActivityModel extends Activity {
  const ActivityModel({
    final String? activity,
    final String? type,
    final int? participants,
    final double? price,
    final String? link,
    final String? key,
    final dynamic accessibility,
  }) : super(
            accessibility: accessibility,
            activity: activity,
            type: type,
            participants: participants,
            link: link,
            key: key,
            price: price);



  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"],
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}
