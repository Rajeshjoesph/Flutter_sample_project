import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'navbar.dart';

class UserFormPage extends StatefulWidget {
  @override
  _UserFormPageState createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final comfirmPasswordController = TextEditingController();
  String gender = 'Male';

  List<Map<String, String>> users = [];

  int? editingIndex;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (editingIndex != null) {
        users[editingIndex!] = {
          'name': nameController.text,
          'email': emailController.text,
          'gender': gender,
          'password': passwordController.text
        };
        editingIndex = null;
      } else {
        users.add({
          'name': nameController.text,
          'email': emailController.text,
          'gender': gender,
          'password': passwordController.text
        });
      }
      _clearForm();
      setState(() {});
    }
  }

  void _clearForm() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    comfirmPasswordController.clear();
    gender = 'Male';
  }

  void _editUser(int index) {
    setState(() {
      editingIndex = index;
      final user = users[index];
      nameController.text = user['name']!;
      emailController.text = user['email']!;
      gender = user['gender']!;
      passwordController.text = user['password']!;
      comfirmPasswordController.text = user['password']!;
    });
  }

  void _deleteUser(int index) {
    setState(() {
      users.removeAt(index);
      if (editingIndex == index) {
        _clearForm();
        editingIndex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildCustomAppBar(context),
        body: Padding(
            padding: const EdgeInsets.all(16.6),
            child: Column(
              children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(labelText: 'Name'),
                          validator: (value) =>
                              value!.isEmpty ? "Enter your name" : null,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) =>
                              value!.isEmpty ? "Enter your email" : null,
                        ),
                        DropdownButtonFormField<String>(
                            value: gender,
                            decoration: InputDecoration(labelText: "Gender"),
                            items:
                                ['Male', 'Female', 'Other'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) => setState(() {
                                  gender = value!;
                                })),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value) =>
                              value!.isEmpty ? "Enter your password" : null,
                        ),
                        TextFormField(
                          controller: comfirmPasswordController,
                          decoration:
                              InputDecoration(labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Confirm your password";
                            } else if (value != passwordController.text) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _submitForm,
                          child: Text(editingIndex != null
                              ? 'Update User'
                              : 'Add User'),
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
                Expanded(
                  child: users.isEmpty
                      ? Center(child: Text("No users added yet."))
                      : ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return Card(
                              elevation: 4,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: ListTile(
                                title: Text(user['name']!),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Email: ${user['email']}'),
                                    Text('Gender: ${user['gender']}'),
                                  ],
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon:
                                          Icon(Icons.edit, color: Colors.green),
                                      onPressed: () => _editUser(index),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.delete, color: Colors.red),
                                      onPressed: () => _deleteUser(index),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            )));
  }
}
