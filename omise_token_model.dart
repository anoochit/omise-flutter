import 'dart:convert';

class Token {
  String object;
  String id;
  bool livemode;
  String location;
  bool used;
  Card card;
  DateTime created;

  Token({
    this.object,
    this.id,
    this.livemode,
    this.location,
    this.used,
    this.card,
    this.created,
  });

  factory Token.fromRawJson(String str) => Token.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        object: json["object"],
        id: json["id"],
        livemode: json["livemode"],
        location: json["location"],
        used: json["used"],
        card: Card.fromJson(json["card"]),
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "livemode": livemode,
        "location": location,
        "used": used,
        "card": card.toJson(),
        "created": created.toIso8601String(),
      };
}

class Card {
  String object;
  String id;
  bool livemode;
  dynamic street1;
  dynamic street2;
  String city;
  dynamic state;
  String postalCode;
  String country;
  dynamic phoneNumber;
  String financing;
  String bank;
  dynamic firstDigits;
  String lastDigits;
  String brand;
  int expirationMonth;
  int expirationYear;
  String fingerprint;
  String name;
  bool securityCodeCheck;
  DateTime created;

  Card({
    this.object,
    this.id,
    this.livemode,
    this.street1,
    this.street2,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.phoneNumber,
    this.financing,
    this.bank,
    this.firstDigits,
    this.lastDigits,
    this.brand,
    this.expirationMonth,
    this.expirationYear,
    this.fingerprint,
    this.name,
    this.securityCodeCheck,
    this.created,
  });

  factory Card.fromRawJson(String str) => Card.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        object: json["object"],
        id: json["id"],
        livemode: json["livemode"],
        street1: json["street1"],
        street2: json["street2"],
        city: json["city"],
        state: json["state"],
        postalCode: json["postal_code"],
        country: json["country"],
        phoneNumber: json["phone_number"],
        financing: json["financing"],
        bank: json["bank"],
        firstDigits: json["first_digits"],
        lastDigits: json["last_digits"],
        brand: json["brand"],
        expirationMonth: json["expiration_month"],
        expirationYear: json["expiration_year"],
        fingerprint: json["fingerprint"],
        name: json["name"],
        securityCodeCheck: json["security_code_check"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "livemode": livemode,
        "street1": street1,
        "street2": street2,
        "city": city,
        "state": state,
        "postal_code": postalCode,
        "country": country,
        "phone_number": phoneNumber,
        "financing": financing,
        "bank": bank,
        "first_digits": firstDigits,
        "last_digits": lastDigits,
        "brand": brand,
        "expiration_month": expirationMonth,
        "expiration_year": expirationYear,
        "fingerprint": fingerprint,
        "name": name,
        "security_code_check": securityCodeCheck,
        "created": created.toIso8601String(),
      };
}
