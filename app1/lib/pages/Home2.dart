import 'package:flutter/material.dart';
 
class Home2 extends StatelessWidget {
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
                    fontFamily: 'Cursive', // يمكن تغييره إلى خط مخصص
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
                          
                        // الانتقال إلى الشاشة التالية
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