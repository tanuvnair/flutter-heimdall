import 'package:flutter/material.dart';
import 'package:flutter_heimdall/landing_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class DashboardPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Content for Check In',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AttendanceHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Attendance History Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF070808), // Set background color to #070808
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 75, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold), // Header style
            ),
            SizedBox(height: 16), // Space between header and content
            Text(
              'Name:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              '+1234567890',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            Text(
              'Role:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              'Developer',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to edit profile page
                  },
                  icon: Icon(Icons.edit),
                  label: Text('Edit Profile'),
                ),
                SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // Sign out
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );

                  },
                  icon: Icon(Icons.logout),
                  label: Text('Sign Out'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 1; // Initial value for currentIndex

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Return false to indicate that back button press should be ignored
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Blob1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: IndexedStack(
            index: _currentIndex,
            children: [
              AttendanceHistoryPage(),
              DashboardPageContent(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 90, // Set the height of the bottom navigation bar
          color: Color(0xFF643CFA), // Set background color to #643CFA
          child: BottomNavigationBar(
            backgroundColor: Color(0xFF643CFA), // Set background color to #643CFA
            selectedItemColor: Colors.white, // Set selected item color to white
            unselectedItemColor: Colors.white.withOpacity(0.5), // Set unselected item color to semi-transparent white
            currentIndex: _currentIndex, // Set the current index of the navigation bar
            onTap: (index) {
              // Set the state to update the selected index
              setState(() {
                _currentIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), // Set calendar icon for the left item
                label: 'Attendance History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.done_all), // Set check-in icon for the middle item
                label: 'Check In',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person), // Set profile icon for the right item
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}