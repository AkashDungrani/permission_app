import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permissionapp/main.dart';
import 'package:permissionapp/models/status.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    TextStyle mystyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: AppBar(title: Text("Status")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.location == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.location_on,
                    color: (Access.location == null)
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                (Access.location==null)
                ?Text(
                        "PermissionStatus.denied",
                        style: mystyle
                      )
                :Text("${Access.location}",style: mystyle,)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.camera ==null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: (Access.camera == null)
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                (Access.camera == null)
                    ? Text(
                        "PermissionStatus.denied",
                        style: mystyle
                      )
                    : Text(
                        "${Access.camera}",
                        style: mystyle,
                      )
              ],
            ),
             SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.microphone == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.mic,
                    color: (Access.microphone ==null)
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                (Access.microphone == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.microphone}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.photos == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.photo_album,
                    color:
                        (Access.photos == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.photos == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.photos}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.medialibrary == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.video_call,
                    color:
                        (Access.medialibrary == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.medialibrary == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.medialibrary}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.sensors == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.circle,
                    color:
                        (Access.sensors == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.sensors == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.sensors}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.notification == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.notification_add,
                    color:
                        (Access.notification == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.notification == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.notification}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.reminders == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.accessible,
                    color:
                        (Access.reminders == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.reminders == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.reminders}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.contacts == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.contact_phone,
                    color:
                        (Access.contacts == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.contacts == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.contacts}",
                        style: mystyle,
                      )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                          color: (Access.apptracking == null)
                              ? Colors.red
                              : Colors.green,
                          width: 4)),
                  child: Icon(
                    Icons.directions_walk_outlined,
                    color:
                        (Access.apptracking == null) ? Colors.red : Colors.green,
                  ),
                ),
                (Access.apptracking == null)
                    ? Text("PermissionStatus.denied", style: mystyle)
                    : Text(
                        "${Access.apptracking}",
                        style: mystyle,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
