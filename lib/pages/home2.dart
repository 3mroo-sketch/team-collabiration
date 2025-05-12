import 'package:app_proji/pages/home.dart';
import 'package:flutter/material.dart';
 
class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDF6FA), 
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 40),
            Column(
              children: [
                Text(
                  'Mon Foyer Budget',
                  style: TextStyle(
                      fontSize: 32,
                    fontFamily: 'Cursive', 
                    fontWeight: FontWeight.bold,
                  )
                  ),
                SizedBox(height: 4),
                Text(
                  'FAMILY',
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Track Every expense',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Cursive',
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                          Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>LoginSignupPage()), );
                        
                      },
                      icon: Icon(Icons.arrow_forward),
                      label: Text('Get Started'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            )
          ],
        ),
      ),
    );
  }
}
