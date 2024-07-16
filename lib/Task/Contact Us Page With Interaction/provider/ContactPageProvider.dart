import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends ChangeNotifier
{
  void launchPhone()
  {
    Uri uri = Uri.parse('tel: +91 12345 67890');
    launchUrl(uri);
  }
  void launchMail()
  {
    Uri uri = Uri.parse('mailto: hiren120@gmail.com');
    launchUrl(uri);
  }

  void launchBehance()
  {
    Uri uri = Uri.parse('https://www.behance.net/');
    launchUrl(uri);
  }

  void launchInsta()
  {
    Uri uri = Uri.parse('https://www.instagram.com/');
    launchUrl(uri);
  }

  void launchDribbel()
  {
    Uri uri = Uri.parse('https://dribbble.com/');
    launchUrl(uri);
  }
}