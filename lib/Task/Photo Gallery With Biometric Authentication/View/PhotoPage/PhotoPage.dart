import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/global.dart';
import '../../Provider/Provider.dart';
import '../HideFolder/HideScren.dart';

class PhotoScreen extends StatelessWidget {
  PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProviderFalse =
        Provider.of<PhotoProvider>(context, listen: false);

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 28,
        ),
        centerTitle: true,
        title: Text(
          'Gallery',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) async {
              if (value == 0) {
                await photoProviderFalse.checkFringerprint();
                if (photoProviderFalse.response) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HideScreen(),
                    ),
                  );
                }
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                value: 0,
                child: Text('Hide Photos'),
              ),
              PopupMenuItem(
                value: 1,
                child: Text('Setting'),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Column(
          children: [
            Wrap(
              spacing: w * 0.032,
              children: [
                ...List.generate(
                  mainPhotoList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.1422,
                          width: w * 0.291,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(mainPhotoList[index]['img']),
                            ),
                          ),
                        ),
                        Container(
                          height: h * 0.07,
                          width: w * 0.291,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                mainPhotoList[index]['cat'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: w*0.044),
                              ),
                              Text(
                                mainPhotoList[index]['num'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.034,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
