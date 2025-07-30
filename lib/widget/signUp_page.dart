import 'package:flutter/material.dart';

class SiginUpPage extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<SiginUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController dobControllor = TextEditingController();

  String? gender;
  DateTime? selectedDate;
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
                    width: 50,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ACF1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sigin page..",
                          style: TextStyle(fontSize: 30, color: Colors.blue),
                        ),
                        Container(
                            margin: EdgeInsets.all(10),
                            child: Form(
                              child: Column(children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Enter your name",
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: "Gender",
                                    border: const OutlineInputBorder(),
                                  ),
                                  value: gender,
                                  items: ["Male", "Female", "Others"]
                                      .map((e) => DropdownMenuItem(
                                          value: e, child: Text(e)))
                                      .toList(),
                                  onChanged: (value) =>
                                      setState(() => gender = value),
                                  validator: (value) => value == null
                                      ? "Please select gender"
                                      : null,
                                ),
                              ]),
                            ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
