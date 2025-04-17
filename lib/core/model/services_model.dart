import 'package:flutter/material.dart';

class ServicesModel {
  String id;
  String title;
  String image;
  Color background;

  ServicesModel({
    required this.id,
    required this.title,
    required this.image,
    required this.background,
  });

  static List<ServicesModel> categories = [
    ServicesModel(
        id: "1",
        title: "تبرع بالدم",
        image: "health.png",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "2",
        title: "مساعدات الطريق",
        image: "clean_road.jpg",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "3",
        title: "توزيع مساعدات",
        image: "donation.jpg",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "4",
        title: "ترميم بيوت",
        image: "building.png",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "5",
        title: "اغاثه كوارث",
        image: "environment.png",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "6",
        title: "تعليم و تدريب",
        image: "learning.jpg",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "7",
        title: "رعايه وتوعيه صحيه",
        image: "health.png",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "8",
        title: "رعايه ايتام",
        image: "science.png",
        background: Color(0xffCF7E48)),
    ServicesModel(
        id: "9",
        title: "مساعدات موسميه",
        image: "science.png",
        background: Color(0xffCF7E48))
  ];
}
