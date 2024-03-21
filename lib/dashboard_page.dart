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
    return Scaffold(
      backgroundColor: Color(0xFF070808), // Set background color to #070808
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 75, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Attendance',
              style: TextStyle(fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'March 2024',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    // Handle calendar button tap
                  },
                  icon: Icon(Icons.calendar_today, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Pill-shaped containers displaying attendance details
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple, // Background color
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fri', // Day
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        '22', // Date
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '09:00 AM', // Check-in time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '03:00 PM', // Check-out time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple, // Background color
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Thu', // Day
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        '21', // Date
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '10:00 AM', // Check-in time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '01:00 PM', // Check-out time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple, // Background color
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wed', // Day
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        '20', // Date
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '09:00 AM', // Check-in time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '06:00 PM', // Check-out time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple, // Background color
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tue', // Day
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        '19', // Date
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '07:00 AM', // Check-in time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '01:30 PM', // Check-out time
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
              'Tanuv Nair',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              'tanuvnair@gmail.com',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold), // Set text color to white and make bold
            ),
            Text(
              '+917738322523',
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
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple, // Set button background color to deepPurple
                    onPrimary: Colors.white, // Set button text color to white
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Add rounded corners to button
                  ),
                  icon: Icon(Icons.edit), // Add icon to button
                  label: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white), // Set text color to white
                  ),
                ),

                SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // Sign Out
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple, // Set button background color to deepPurple
                    onPrimary: Colors.white, // Set button text color to white
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Add rounded corners to button
                  ),
                  icon: Icon(Icons.logout), // Add icon to button
                  label: Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.white), // Set text color to white
                  ),
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
                label: 'My Attendance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.done_all), // Set check-in icon for the middle item
                label: 'Clock In',
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