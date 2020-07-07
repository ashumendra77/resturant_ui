import 'package:flutter/material.dart';

class BodyDetail {
  String current;
  String name;
  String country;
  String distance;
  String add;
  String imageurl;
  double rating;
  BodyDetail({
    @required this.rating,
    @required this.imageurl,
    @required this.add,
    @required this.country,
    @required this.name,
    @required this.current,
    @required this.distance,
  });
}

List<BodyDetail> bodylist = [
  BodyDetail(
      rating: 4.5,
      imageurl: "assets/download.jpeg",
      add: "394,Broom St. New York",
      country: "Indian",
      name: "Happy Bones",
      current: "Open",
      distance: "12Km"),
      BodyDetail(
      rating: 4.5,
      imageurl: "assets/download.jpeg",
      add: "394,Broom St. New York",
      country: "Indian",
      name: "Happy Bones",
      current: "Open",
      distance: "12Km"),
      BodyDetail(
      rating: 4.5,
      imageurl: "assets/download.jpeg",
      add: "394,Broom St. New York",
      country: "Indian",
      name: "Happy Bones",
      current: "Open",
      distance: "12Km"),
      BodyDetail(
      rating: 4.5,
      imageurl: "assets/download.jpeg",
      add: "394,Broom St. New York",
      country: "Indian",
      name: "Happy Bones",
      current: "Open",
      distance: "12Km"),
      BodyDetail(
      rating: 4.5,
      imageurl: "assets/download.jpeg",
      add: "394,Broom St. New York",
      country: "Indian",
      name: "Happy Bones",
      current: "Open",
      distance: "12Km"),
];
