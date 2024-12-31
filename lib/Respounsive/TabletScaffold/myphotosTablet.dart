import 'dart:html' as html;
import 'dart:typed_data';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPhotosTab extends StatefulWidget {
  const MyPhotosTab({Key? key}) : super(key: key);

  @override
  State<MyPhotosTab> createState() => _MyPhotosTabState();
}

class _MyPhotosTabState extends State<MyPhotosTab> {
  // List to store the image paths or URLs
  List<String> _imagePaths = [
    'Assets/Ant.jpg',
    'Assets/dharika.jpg',
    'Assets/eecha.jpg',
    'Assets/flower.jpg',
    'Assets/mashroom.jpg',
    'Assets/theeppetti.jpg',
    'Assets/thimbi.JPG',
    'Assets/vand.jpg',
    'Assets/yellowflower.jpg',
    'Assets/ant2.jpg',
    'Assets/beerorang.jpg',
    'Assets/butterfly.jpg',
    'Assets/cat.jpg',
    'Assets/cherry.jpg',
    'Assets/click.jpg',
    'Assets/ecah2.jpg',
    'Assets/kingfiher.jpg',
    'Assets/mash2.jpg',
    'Assets/redbeer.jpg',
    'Assets/sku.jpg',
    'Assets/spider.jpg',
    'Assets/threetheeppetti.jpg',
    'Assets/waterdrop.jpg',
    'Assets/whiteflower.jpg',
    'Assets/yellowflower2.jpg',
  ];

  Future<void> _downloadImage(String assetPath, String fileName) async {
    try {
      // Load the image from the asset
      final byteData = await rootBundle.load(assetPath);

      // Convert ByteData to Uint8List
      final Uint8List bytes = byteData.buffer.asUint8List();

      // Create a Blob and trigger the download
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: url)
        ..target = 'blank'
        ..download = fileName
        ..click();

      // Revoke the object URL to free memory
      html.Url.revokeObjectUrl(url);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Downloading $fileName',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: CupertinoColors.black,
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to download image: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 1000,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(5, 0), // Shadow only on the right side
          ),
        ], borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns in the grid
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
            ),
            itemCount: _imagePaths.length, // Number of items in the grid
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            _imagePaths[
                            index], // Access the image path from the list
                            fit: BoxFit.cover, // Cover the entire cell
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Download",
                          style: GoogleFonts.podkova(fontSize: 10),
                        ),
                        IconButton(
                            onPressed: () {
                              _downloadImage(
                                  _imagePaths[index], 'image_${index + 1}.jpg');
                            },
                            icon: Icon(
                              CupertinoIcons.down_arrow,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
