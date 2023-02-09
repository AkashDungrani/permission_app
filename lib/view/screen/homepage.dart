import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permissionapp/models/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission Handler"),
        actions: [
          IconButton(
              onPressed: () {
                openAppSettings();
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "edit");
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus locationstatus =
                        await Permission.location.request();
                    setState(() {
                      Access.location = locationstatus;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${locationstatus}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Location")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status = await Permission.camera.request();
                    setState(() {
                      Access.camera = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Camera")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.microphone.request();
                    setState(() {
                      Access.microphone = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Microphone")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status = await Permission.photos.request();
                    setState(() {
                      Access.photos = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Photos")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.mediaLibrary.request();
                        setState(() {
                      Access.medialibrary = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Media Library")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.sensors.request();
                        setState(() {
                      Access.sensors = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Sensors")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.notification.request();
                        setState(() {
                      Access.notification = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Notification")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.reminders.request();
                        setState(() {
                      Access.reminders = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Reminders")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.contacts.request();
                        setState(() {
                      Access.contacts = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("Contacts")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.appTrackingTransparency.request();
                        setState(() {
                      Access.apptracking = status;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${status}"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text("App Tracking")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white24,
    );
  }
}



