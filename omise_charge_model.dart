import 'dart:convert';

class Charge {
  String object;
  String id;
  bool livemode;
  String location;
  int amount;
  String currency;
  int fundingAmount;
  String fundingCurrency;
  String description;
  Metadata metadata;
  String status;
  bool capture;
  bool authorized;
  dynamic schedule;
  bool reversed;
  dynamic reversedAt;
  DateTime expiresAt;
  bool expired;
  dynamic expiredAt;
  bool voided;
  bool paid;
  DateTime paidAt;
  String transaction;
  String sourceOfFund;
  int refunded;
  Refunds refunds;
  String returnUri;
  dynamic offsite;
  dynamic offline;
  dynamic failureCode;
  dynamic failureMessage;
  Card card;
  dynamic customer;
  dynamic ip;
  dynamic dispute;
  DateTime created;
  bool disputable;
  bool capturable;
  bool reversible;
  bool refundable;
  String reference;
  String authorizeUri;

  Charge({
    this.object,
    this.id,
    this.livemode,
    this.location,
    this.amount,
    this.currency,
    this.fundingAmount,
    this.fundingCurrency,
    this.description,
    this.metadata,
    this.status,
    this.capture,
    this.authorized,
    this.schedule,
    this.reversed,
    this.reversedAt,
    this.expiresAt,
    this.expired,
    this.expiredAt,
    this.voided,
    this.paid,
    this.paidAt,
    this.transaction,
    this.sourceOfFund,
    this.refunded,
    this.refunds,
    this.returnUri,
    this.offsite,
    this.offline,
    this.failureCode,
    this.failureMessage,
    this.card,
    this.customer,
    this.ip,
    this.dispute,
    this.created,
    this.disputable,
    this.capturable,
    this.reversible,
    this.refundable,
    this.reference,
    this.authorizeUri,
  });

  factory Charge.fromRawJson(String str) => Charge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Charge.fromJson(Map<String, dynamic> json) => Charge(
        object: json["object"],
        id: json["id"],
        livemode: json["livemode"],
        location: json["location"],
        amount: json["amount"],
        currency: json["currency"],
        fundingAmount: json["funding_amount"],
        fundingCurrency: json["funding_currency"],
        description: json["description"],
        metadata: Metadata.fromJson(json["metadata"]),
        status: json["status"],
        capture: json["capture"],
        authorized: json["authorized"],
        schedule: json["schedule"],
        reversed: json["reversed"],
        reversedAt: json["reversed_at"],
        expiresAt: DateTime.parse(json["expires_at"]),
        expired: json["expired"],
        expiredAt: json["expired_at"],
        voided: json["voided"],
        paid: json["paid"],
        paidAt: DateTime.parse(json["paid_at"]),
        transaction: json["transaction"],
        sourceOfFund: json["source_of_fund"],
        refunded: json["refunded"],
        refunds: Refunds.fromJson(json["refunds"]),
        returnUri: json["return_uri"],
        offsite: json["offsite"],
        offline: json["offline"],
        failureCode: json["failure_code"],
        failureMessage: json["failure_message"],
        card: Card.fromJson(json["card"]),
        customer: json["customer"],
        ip: json["ip"],
        dispute: json["dispute"],
        created: DateTime.parse(json["created"]),
        disputable: json["disputable"],
        capturable: json["capturable"],
        reversible: json["reversible"],
        refundable: json["refundable"],
        reference: json["reference"],
        authorizeUri: json["authorize_uri"],
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "livemode": livemode,
        "location": location,
        "amount": amount,
        "currency": currency,
        "funding_amount": fundingAmount,
        "funding_currency": fundingCurrency,
        "description": description,
        "metadata": metadata.toJson(),
        "status": status,
        "capture": capture,
        "authorized": authorized,
        "schedule": schedule,
        "reversed": reversed,
        "reversed_at": reversedAt,
        "expires_at": expiresAt.toIso8601String(),
        "expired": expired,
        "expired_at": expiredAt,
        "voided": voided,
        "paid": paid,
        "paid_at": paidAt.toIso8601String(),
        "transaction": transaction,
        "source_of_fund": sourceOfFund,
        "refunded": refunded,
        "refunds": refunds.toJson(),
        "return_uri": returnUri,
        "offsite": offsite,
        "offline": offline,
        "failure_code": failureCode,
        "failure_message": failureMessage,
        "card": card.toJson(),
        "customer": customer,
        "ip": ip,
        "dispute": dispute,
        "created": created.toIso8601String(),
        "disputable": disputable,
        "capturable": capturable,
        "reversible": reversible,
        "refundable": refundable,
        "reference": reference,
        "authorize_uri": authorizeUri,
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

class Metadata {
  Metadata();

  factory Metadata.fromRawJson(String str) =>
      Metadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata();

  Map<String, dynamic> toJson() => {};
}

class Refunds {
  String object;
  DateTime from;
  DateTime to;
  int offset;
  int limit;
  int total;
  String order;
  String location;
  List<dynamic> data;

  Refunds({
    this.object,
    this.from,
    this.to,
    this.offset,
    this.limit,
    this.total,
    this.order,
    this.location,
    this.data,
  });

  factory Refunds.fromRawJson(String str) => Refunds.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Refunds.fromJson(Map<String, dynamic> json) => Refunds(
        object: json["object"],
        from: DateTime.parse(json["from"]),
        to: DateTime.parse(json["to"]),
        offset: json["offset"],
        limit: json["limit"],
        total: json["total"],
        order: json["order"],
        location: json["location"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "from": from.toIso8601String(),
        "to": to.toIso8601String(),
        "offset": offset,
        "limit": limit,
        "total": total,
        "order": order,
        "location": location,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}
