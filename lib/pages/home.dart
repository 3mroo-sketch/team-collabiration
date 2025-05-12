import 'package:flutter/material.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({super.key});

  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget _buildTextField(String label, {bool obscure = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      children: [
        _buildTextField('Nom'),
        _buildTextField('Email Address'),
        _buildTextField('Password', obscure: true),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Forgot password'),
        )
      ],
    );
  }

  Widget _buildSignUpForm() {
    return Column(
      children: [
        _buildTextField('Nom'),
        _buildTextField('Email Address'),
        _buildTextField('Password', obscure: true),
        _buildTextField('Confirmé password', obscure: true),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDF6FA),
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color:  Color(0xFFDDF6FA),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'image/familly.png', // ضع مسار الشعار هنا
                  height: 100,
                ),
                SizedBox(height: 10),
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Login'),
                    Tab(text: 'Sign Up'),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 360,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildLoginForm(),
                      _buildSignUpForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
