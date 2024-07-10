import 'package:adv_flutter_ch1/Task/Provider%20&%20Change%20Theme%20using%20Provider/Provider/Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'component/Row.dart';

class Change_Theme_Using_Provider extends StatelessWidget {
  const Change_Theme_Using_Provider({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProviderTrue = Provider.of<ThemeProvider>(context,listen: true);
    ThemeProvider themeProviderFalse = Provider.of<ThemeProvider>(context,listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.left_chevron,
                  size: 30,
                ),
                Icon(
                  Icons.add_circle_outline_outlined,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 74,
                    backgroundImage: AssetImage('assets/hiren.jpeg'),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Hiren Bambhaniya',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              children: [
                Icon(
                  Provider.of<ThemeProvider>(context).isDark? CupertinoIcons.moon_fill : Icons.sunny,
                  size: 24,
                  color: Theme.of(context).colorScheme.surface,
                ),
                SizedBox(
                  width: 34,
                ),
                Text(
                    Provider.of<ThemeProvider>(context).isDark? 'Dark Mode' : 'Light Mode',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Switch(
                  value: themeProviderTrue.isDark,
                  activeColor: Provider.of<ThemeProvider>(context).isDark? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.surface,
                  onChanged: (value) {
                    themeProviderFalse.changeTheme();
                  },
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            row(iconName: Icons.grid_on,name: 'Story',textColor: Theme.of(context).colorScheme.onInverseSurface),
            SizedBox(
              height: 28,
            ),
            row(iconName: Icons.settings,name: 'Setting and Privacy',textColor: Theme.of(context).colorScheme.onTertiary),
            SizedBox(
              height: 28,
            ),
            row(iconName: Icons.message_outlined,name: 'Help Center',textColor: Theme.of(context).colorScheme.onTertiaryContainer),
            SizedBox(
              height: 28,
            ),
            row(iconName: Icons.notifications,name: 'Notification',textColor: Theme.of(context).colorScheme.surface),
          ],
        ),
      ),
    );
  }
}
