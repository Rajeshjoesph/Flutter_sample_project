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
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sigin page..",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                Container(
                    width: 500,
                    height: 500,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8ACF1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                        child: Form(
                      key: _formKey,
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter your name",
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 15),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Gender",
                            border: const OutlineInputBorder(),
                          ),
                          value: gender,
                          items: ["Male", "Female", "Others"]
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                          onChanged: (value) => setState(() => gender = value),
                          validator: (value) =>
                              value == null ? "Please select gender" : null,
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Age",
                              border: const OutlineInputBorder()),
                          keyboardType: TextInputType.number,
                          validator: (value) =>
                              value!.isEmpty ? "Enter Age" : null,
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: ("Date of Birth"),
                              border: OutlineInputBorder()),
                          controller: dobControllor,
                          readOnly: true,
                          onTap: () async {
                            DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now());
                            if (date != null) {
                              setState(() {
                                selectedDate = date;
                                dobControllor.text =
                                    "${date.day}/${date.month}/${date.year}";
                              });
                            }
                          },
                          validator: (value) =>
                              value!.isEmpty ? "Select date of birth" : null,
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          obscureText: obscureConfirmPassword,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Confirm Password",
                              suffixIcon: IconButton(
                                  icon: Icon(obscureConfirmPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () => setState(() {
                                        (() => obscureConfirmPassword =
                                            !obscureConfirmPassword);
                                      }))),
                          validator: (value) =>
                              value!.length < 6 ? "Minimum ^ characters" : null,
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "OTP", border: OutlineInputBorder()),
                          keyboardType: TextInputType.number,
                          validator: (value) =>
                              value!.isEmpty ? "Enter OTp" : null,
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            bool isFormValid =
                                _formKey.currentState!.validate();

                            // Custom check for gender and date of birth
                            if (gender == null) {
                              isFormValid = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("Please select your gender")),
                              );
                            } else if (dobControllor.text.isEmpty) {
                              isFormValid = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        "Please select your date of birth")),
                              );
                            }

                            if (isFormValid) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text("Form submitted successfully")),
                              );
                            }
                          },
                          child: Text("Submit"),
                        ),
                      ]),
                    )))
              ],
            )))
          ],
        ),
      ),
    );
  }
}
