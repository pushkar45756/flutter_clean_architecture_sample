import 'package:equatable/equatable.dart';

// var a = {
// "activity": "Contribute code or a monetary donation to an open-source software project",
// "type": "charity",
// "participants": 1,
// "price": 0.1,
// "link": "https://github.com/explore",
// "key": "7687030",
// "accessibility": 0
// }

class Activity extends Equatable {
  final String? activity;
  final String? type;
  final int? participants;
  final num? price;
  final String? link;
  final String? key;
  final dynamic accessibility;

  const Activity({
    this.activity,
    this.type,
    this.participants,
    this.price,
    this.link,
    this.key,
    this.accessibility,
  });

  getParticipant() {
    return "$participants  attended the party";
  }

  @override
  List<Object> get props {
    return [
      activity ?? "",
      type ?? "",
      participants ?? 0,
      price ?? 0.0,
      link ?? "",
      key ?? "",
      accessibility ?? 0,
    ];
  }

  @override
  bool get stringify => true;
}
