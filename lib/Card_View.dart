// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siraba_chariaw/ListCategories.dart';
import 'package:siraba_chariaw/PanneauContent/DetailsPanneau.dart';

import 'package:http/http.dart' as http;

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 1.0, mainAxisSpacing: 2),
            itemCount: categoryLists.length,
            itemBuilder: (context, index) {
              return makeCard(categoryLists[index], categoryName[index]);
            },
          ),
        ));
  }

  Widget makeCard(String imagePath, String nomPanneau) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 5, left: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const DetailsPanneau()));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5)
              ],
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 120, width: 120),
              Text(
                nomPanneau,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
