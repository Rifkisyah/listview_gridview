import 'package:flutter/material.dart';
import 'package:listview_gridview/models/tempat_wisata.dart';
import 'package:listview_gridview/screens/detail_wisata.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TempatWisataModel tempatWisataModel = TempatWisataModel();
    return ListView.builder(
      itemCount: tempatWisataModel.data.length,
      itemBuilder: (context, index) {
        final dataItem = tempatWisataModel.data[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailWisataScreen(
                    nama: dataItem['nama']!,
                    gambar: dataItem['gambar']!,
                    deskripsi: dataItem['deskripsi']!,
                  ),
                ));
              },
              leading: Image.network(dataItem['gambar']!, width: 100,fit: BoxFit.cover,),
              title: Text(dataItem['nama']!),
            ),
          ),
        );
      },
    );
  }
}
