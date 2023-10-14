
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_toastify/components/enums.dart';
import 'package:flutter_toastify/flutter_toastify.dart';
import 'package:toastify/toastify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';


class CheckUp extends StatefulWidget {
  const CheckUp({super.key});

  @override
  State<CheckUp> createState() => _CheckUpState();
}
class _CheckUpState extends State<CheckUp> {
  _showToast(String msg, {int? duration, int? position}) {
    FlutterToastr.show(msg, context, duration: duration, position: position);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              _showToast("Show Bottom Toastr",
                  position: FlutterToastr.bottom);
            },
            child: Text("Clicked"),
          ),
        ),
      ),
    );
  }

  showToast(){
    FlutterToastify.success(
      width: 120,
      notificationPosition: NotificationPosition.bottomCenter,
      animation: AnimationType.fromBottom,
      title: const Text('Güncelleme'),
      description: const Text('Verileriniz güncellendi'),
      onDismiss: () {},
    ).show(context);
  }
}
