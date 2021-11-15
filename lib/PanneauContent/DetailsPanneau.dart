// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:siraba_chariaw/PanneauContent/DetailsPanneauContent.dart';

class DetailsPanneau extends StatefulWidget {
  const DetailsPanneau({Key? key, required this.categoryId}) : super(key: key);
  final int categoryId;

  @override
  _DetailsPanneauState createState() => _DetailsPanneauState();
}

class _DetailsPanneauState extends State<DetailsPanneau>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panneaux ${widget.categoryId}"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 50,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          TabBar(
            controller: tabController,
            isScrollable: true,
            labelColor: Colors.blue,
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
                child: Text("Signalisations",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: TabBarView(
                controller: tabController,
                children: const [
                  DetailsPanneauContent(imgPath: "assets/images/danger/1.png"),
                  DetailsPanneauContent(imgPath: "assets/images/danger/2.png"),
                  DetailsPanneauContent(imgPath: "assets/images/danger/3.png"),
                  DetailsPanneauContent(imgPath: "assets/images/danger/4.png"),
                ],
              ))
        ],
      ),
    );
  }
}
