import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ContactPageProvider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ContactPage contactPageFalse = Provider.of<ContactPage>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us',style: TextStyle(color: Colors.blue,fontSize: 26,fontWeight: FontWeight.bold),),
        leading: Icon(CupertinoIcons.left_chevron,size: 28,color: Colors.blue,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            SizedBox(
              height: 39,
            ),
            Align(
              alignment: Alignment.center,
                child: Text(
              'If you have any queries, get in touch with us. We will be happy to help you!',
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),
            ),),
            SizedBox(height: 56,),
            GestureDetector(
              onTap: () {
                contactPageFalse.launchPhone();
              },
              child: Container(
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.lightBlue,width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 28,),
                    Icon(Icons.aod,size: 35,color: Colors.blue,),
                    SizedBox(width: 26,),
                    Text('+91 12345 67890',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22,),
            GestureDetector(
              onTap: () {
                contactPageFalse.launchMail();
              },
              child: Container(
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.lightBlue,width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 28,),
                    Icon(Icons.mail_outline,size: 35,color: Colors.blue,),
                    SizedBox(width: 26,),
                    Text('hiren120@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 336,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.lightBlue,width: 1),
              ),
              child: Column(
                children: [
                  SizedBox(height: 18,),
                  Text('Social Media',style: TextStyle(color: Colors.blue,fontSize: 26,fontWeight:FontWeight.bold),),
                  SizedBox(height:18,),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.lightBlue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: () {
                        contactPageFalse.launchBehance();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/behance.png'),
                          ),
                          SizedBox(width: 30,),
                          Text('Behance',style: TextStyle(fontSize: 22),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.lightBlue,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: () {
                        contactPageFalse.launchInsta();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/insta.png'),
                          ),
                          SizedBox(width: 30,),
                          Text('Instagram',style: TextStyle(fontSize: 22),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.lightBlue,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: () {
                        contactPageFalse.launchDribbel();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/dribbel.png'),
                          ),
                          SizedBox(width: 30,),
                          Text('Dribble',style: TextStyle(fontSize: 22),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
