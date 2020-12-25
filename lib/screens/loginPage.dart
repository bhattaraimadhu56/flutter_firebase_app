import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
// create a instane of firebase Auth
// it can't be further changes so use word final
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Create a global key to use formstate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// our fields email and password
  String _email, _password;
// If the user is login redirect to home otherwise redirect to login page
//lets create couple of methods for that
  checkAuthentication() async {
    _auth.authStateChanges().listen((userData) async {
      if (userData != null) {
        // if there is user then don't redirect to login page
        //pushReplacementNamed will not show back button but
        // push will show back button so user can go to previous page
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  // redirect to register page
  navigateToRegister() async {
    Navigator.pushReplacementNamed(context, "/register");
  }

  // as soon as application start need to check checkAuthentication() method forthat need to override a lifecycle method
  @override
  void initState() {
    //need to call initState by super
    super.initState();
    this.checkAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
