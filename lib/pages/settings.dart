import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  bool androidtheme = false;
  bool fingerprint = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('Settings'),
        // centerTitle: true,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            // titlePadding: EdgeInsets.all(20),
            title: Text('section 1'),
            tiles: [
              SettingsTile(
                title: Text('Language'),
                description: Text('english'),
                leading: Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                initialValue: androidtheme,
                title: Text('Use System Theme'),
                leading: Icon(Icons.phone_android),
                // switchValue: isSwitched,
                onToggle: (value) {
                  setState(() {
                    androidtheme = value;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            // margin: EdgeInsets.all(20.0),
            title: Text('Section 2'),
            tiles: [
              SettingsTile(
                title: Text('Security'),
                description: Text('Fingerprint'),
                leading: Icon(Icons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Use fingerprint'),
                leading: Icon(Icons.fingerprint),
                initialValue: fingerprint,
                onToggle: (value) {
                  setState(() {
                    fingerprint = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
