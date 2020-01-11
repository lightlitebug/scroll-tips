import 'package:flutter/material.dart';
import 'package:scroll_ex/widgets/my_button.dart';

class KeyboardAvoiding extends StatefulWidget {
  @override
  _KeyboardAvoidingState createState() => _KeyboardAvoidingState();
}

class _KeyboardAvoidingState extends State<KeyboardAvoiding> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username;
  String email;
  String address;
  String password;

  void submit() {
    final form = _formKey.currentState;

    if (!form.validate()) {
      return;
    }

    form.save();

    print('You entered following information');
    print('username: $username');
    print('username: $email');
    print('username: $address');
    print('username: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keyboard Avoiding'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome to My World!',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      onSaved: (value) => username = value,
                      decoration: InputDecoration(
                        labelText: 'username',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      validator: (value) {
                        if (username.isEmpty || username.length < 3) {
                          return 'invalid username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      onSaved: (value) => email = value,
                      decoration: InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      validator: (value) {
                        if (email.isEmpty || !email.contains('@')) {
                          return 'invalid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      onSaved: (value) => address = value,
                      decoration: InputDecoration(
                        labelText: 'address',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      validator: (value) {
                        if (address.isEmpty || address.length < 6) {
                          return 'invalid address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      onSaved: (value) => password = value,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      validator: (value) {
                        if (password.isEmpty || password.length < 6) {
                          return 'invalid password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    MyButton(
                      btnTitle: 'REGISTER',
                      onPressed: submit,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
