import 'dart:convert';
import 'dart:io';
import 'package:doggygirl/omise_charge_model.dart';
import 'package:doggygirl/omise_token_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Omise {
  String vaultURL = "https://vault.omise.co";
  String apiURL = "https://api.omise.co";
  String pKey = "";
  String sKey = "";

  config(String pkey, String skey) {
    this.pKey = pkey;
    this.sKey = skey;
  }

  String cardDataBuilder(
      String name,
      String city,
      String postalCode,
      String number,
      String securityCode,
      String expirationMonth,
      String expirationYear) {
    String cardData = "card[name]=" +
        name +
        "&" +
        "card[city]=" +
        city +
        "&" +
        "card[postal_code]=" +
        postalCode +
        "&" +
        "card[number]=" +
        number +
        "&" +
        "card[security_code]=" +
        securityCode +
        "&" +
        "card[expiration_month]=" +
        expirationMonth +
        "&" +
        "card[expiration_year]=" +
        expirationYear;
    return cardData;
  }

  String chargeDataBuilder(String description, double amount, String currency) {
    if (currency == "thb") {
      amount = amount * 100;
    }

    String chargeData = "description=" +
        description +
        "&amount=" +
        amount.toString() +
        "&currency=" +
        currency;

    return chargeData;
  }

  Future<Charge> createChargeWithToken(
      String cardData, String chargeData) async {
    // sent request for token
    String basicAuth = 'Basic ' + base64Encode(utf8.encode(this.pKey + ":"));
    //print("basicAuth -> " + basicAuth);
    Response responseToken = await http.post(vaultURL + "/tokens",
        headers: <String, String>{
          'authorization': basicAuth,
          'Cache-Control': 'no-cache',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: cardData);

    print("cardData -> " + cardData);
    print("responseToken statusCode -> " + responseToken.statusCode.toString());

    if (responseToken.statusCode == HttpStatus.ok) {
      // extract token id
      var token = Token.fromJson(json.decode(responseToken.body));
      var tokenId = token.id;

      print("tokenId -> " + tokenId);
      print("chargeData -> " + chargeData);

      //got token then sent charge data
      String basicAuth = 'Basic ' + base64Encode(utf8.encode(this.sKey + ":"));
      Response responseCharge = await http.post(apiURL + "/charges",
          headers: <String, String>{
            'authorization': basicAuth,
            'Cache-Control': 'no-cache',
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          body: chargeData + "&card=" + tokenId);

      print("responseCharge statusCode -> " +
          responseCharge.statusCode.toString());

      if (responseCharge.statusCode == HttpStatus.ok) {
        print(
            "responseCharge responseBody -> " + responseCharge.body.toString());
        return Charge.fromJson(json.decode(responseCharge.body));
      } else {
        return null;
      }
    } else {
      // cannot create token
      return null;
    }
  }
}
