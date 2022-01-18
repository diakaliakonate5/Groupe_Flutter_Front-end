// ignore_for_file: file_names

import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:siraba_chariaw/ListCategories.dart';
import 'package:siraba_chariaw/PanneauContent/DetailsPanneauContent.dart';
import 'package:http/http.dart' as http;

class DetailsPanneau extends StatefulWidget {
  const DetailsPanneau({Key? key}) : super(key: key);

  @override
  _DetailsPanneauState createState() => _DetailsPanneauState();
}

class _DetailsPanneauState extends State<DetailsPanneau>
    with TickerProviderStateMixin {
  late TabController tabController;
  AudioCache player = AudioCache();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panneaux"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        toolbarHeight: 70,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          TabBar(
            controller: tabController,
            isScrollable: true,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                child: Text("Dangers",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("Obligations",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("Interdictions",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("Indications",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: TabBarView(
                controller: tabController,
                children: [
                  DetailsPanneauContent(imgPath: categoryLists[0], audio: categoryAudio[0],
                      description: categoryDescription[0], panels: categoryPanels, panelsDesc: categoryPanelsDesc, panelsAudios: categoryPanelsAudios, idCategory: 0),

                  DetailsPanneauContent(imgPath: categoryLists[1], audio: categoryAudio[1],
                      description: categoryDescription[1], panels: categoryPanels, panelsDesc: categoryPanelsDesc, panelsAudios: categoryPanelsAudios, idCategory: 1),

                  DetailsPanneauContent(imgPath: categoryLists[2], audio: categoryAudio[2],
                      description: categoryDescription[2], panels: categoryPanels, panelsDesc: categoryPanelsDesc, panelsAudios: categoryPanelsAudios, idCategory: 2),

                  DetailsPanneauContent(imgPath: categoryLists[3], audio: categoryAudio[3],
                      description: categoryDescription[3], panels: categoryPanels, panelsDesc: categoryPanelsDesc, panelsAudios: categoryPanelsAudios, idCategory: 3)
                ],
              ))
        ],
      ),
    );
  }
}
