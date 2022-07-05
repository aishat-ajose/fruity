// To parse this JSON data, do
//
//     final fruitModel = fruitModelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators, unnecessary_null_comparison

import 'package:meta/meta.dart';
import 'dart:convert';

List<FruitModel> fruitFromJson(String str) =>
    List<FruitModel>.from(json.decode(str).map((x) => FruitModel.fromJson(x)));

String fruitModelToJson(List<FruitModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FruitModel {
  FruitModel({
    required this.genus,
    required this.name,
    required this.id,
    required this.family,
    required this.order,
    required this.nutritions,
  });

  String genus;
  String name;
  int id;
  String family;
  String order;
  Nutritions nutritions;

  factory FruitModel.fromJson(Map<String, dynamic> json) => FruitModel(
        genus: json["genus"] == null ? null : json["genus"],
        name: json["name"] == null ? null : json["name"],
        id: json["id"] == null ? null : json["id"],
        family: json["family"] == null ? null : json["family"],
        order: json["order"] == null ? null : json["order"],
        nutritions: json["nutritions"] == null ? null : (json["nutritions"]),
      );

  Map<String, dynamic> toJson() => {
        "genus": genus == null ? null : genus,
        "name": name == null ? null : name,
        "id": id == null ? null : id,
        "family": family == null ? null : family,
        "order": order == null ? null : order,
        "nutritions": nutritions == null ? null : nutritions.toJson(),
      };
}

class Nutritions {
  Nutritions({
    required this.carbohydrates,
    required this.protein,
    required this.fat,
    required this.calories,
    required this.sugar,
  });

  double carbohydrates;
  double protein;
  double fat;
  int calories;
  double sugar;

  factory Nutritions.fromJson(Map<String, dynamic> json) => Nutritions(
        carbohydrates: json["carbohydrates"] == null
            ? null
            : json["carbohydrates"].toDouble(),
        protein: json["protein"] == null ? null : json["protein"].toDouble(),
        fat: json["fat"] == null ? null : json["fat"].toDouble(),
        calories: json["calories"] == null ? null : json["calories"],
        sugar: json["sugar"] == null ? null : json["sugar"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates == null ? null : carbohydrates,
        "protein": protein == null ? null : protein,
        "fat": fat == null ? null : fat,
        "calories": calories == null ? null : calories,
        "sugar": sugar == null ? null : sugar,
      };
}
