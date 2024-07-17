import 'package:adv_flutter_ch1/utils/global.dart';
import 'package:flutter/material.dart';

class HideScreen extends StatelessWidget {
  const HideScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Recent',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
          SizedBox(width: w*0.012,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: w * 0.046),
                ),
                Text(
                  'Select',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: w * 0.04),
                ),
              ],
            ),
            SizedBox(height: h*0.02,),
            Wrap(
              spacing: w*0.0221,
              children: [
                ...List.generate(Hide1.length, (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: h*0.084,
                        width: w*0.168,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Hide1[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),),
              ],
            ),
            SizedBox(height: h*0.004,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: w * 0.046),
                ),
                Text(
                  'Select',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: w * 0.04),
                ),
              ],
            ),
            SizedBox(height: h*0.02,),
            Wrap(
              spacing: w*0.0221,
              children: [
                ...List.generate(Hide2.length, (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: h*0.084,
                        width: w*0.168,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Hide2[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
