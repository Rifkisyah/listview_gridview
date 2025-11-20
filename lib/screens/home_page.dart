import 'package:flutter/material.dart';
import 'package:listview_gridview/widgets/grid_view.dart';
import 'package:listview_gridview/widgets/list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Daftar tempat wisata di indonesia', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.list, color: Colors.white,), text: 'List View',),
              Tab(icon: Icon(Icons.grid_on, color: Colors.white,), text: 'Grid View',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewWidget(),
            GridViewWidget(),
          ]
        ),
      ),
    );
  }
}