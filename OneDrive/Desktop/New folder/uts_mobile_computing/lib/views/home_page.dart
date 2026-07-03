import 'package:flutter/material.dart';
import 'attendance_page.dart';
import 'qr_page.dart';
import 'profile_page.dart';
import 'course_page.dart';
import 'assignment_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF022B4E),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 10),

              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Hi, Asep Nurhidayat 👋",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white24, width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/profile.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Fitur pencarian sedang dalam pengembangan",
                      ),
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  height: 58,
                  decoration: BoxDecoration(
                    color: const Color(0xFF053B66),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 15),
                      Icon(Icons.search, color: Colors.white70),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Search class, assignment...",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xFF053B66),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "Student Information",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      "Name : Asep Nurhidayat",
                      style: TextStyle(color: Colors.white70),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "NIM : 24120300009",
                      style: TextStyle(color: Colors.white70),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "Program : S1 Ilmu Komputer",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AttendancePage(),
                          ),
                        );
                      },

                      child: statCard(
                        "Attendance",
                        "92%",
                        "Semester",
                        Colors.cyanAccent,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: statCard(
                      "GPA",
                      "3.75",
                      "Current",
                      Colors.greenAccent,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: statCard(
                      "Task",
                      "4",
                      "Pending",
                      Colors.orangeAccent,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Academic Services",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.3,

                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const CoursePage()),
                      );
                    },

                    child: menuCard(Icons.book, "Courses", "12 Active"),
                  ),

                  menuCard(Icons.calendar_month, "Schedule", "Today"),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AssignmentPage(),
                        ),
                      );
                    },

                    child: menuCard(
                      Icons.assignment,
                      "Assignment",
                      "3 Pending",
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ProfilePage()),
                      );
                    },

                    child: menuCard(Icons.person, "Profile", "Student"),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              const Text(
                "Recent Activity",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              activityCard(
                "UI/UX Assignment Submitted",
                "Successfully uploaded",
                "2m ago",
              ),

              const SizedBox(height: 12),

              activityCard(
                "New Schedule Available",
                "Check your latest classes",
                "1h ago",
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 85,
        color: const Color(0xFF012642),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            const Icon(Icons.home, color: Colors.cyanAccent, size: 32),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AttendancePage()),
                );
              },

              icon: const Icon(
                Icons.assignment_turned_in,
                color: Colors.white70,
                size: 30,
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const QRPage()),
                );
              },

              child: Container(
                width: 70,
                height: 70,

                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.cyanAccent, width: 3),
                ),

                child: const Icon(
                  Icons.qr_code,
                  color: Color(0xFF022B4E),
                  size: 34,
                ),
              ),
            ),

            const Icon(
              Icons.notifications_none,
              color: Colors.white70,
              size: 30,
            ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfilePage()),
                );
              },

              icon: const Icon(
                Icons.person_outline,
                color: Colors.white70,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget statCard(
    String title,
    String value,
    String subtitle,
    Color valueColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xFF053B66),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [
          Text(title, style: const TextStyle(color: Colors.white70)),

          const SizedBox(height: 8),

          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(subtitle, style: const TextStyle(color: Colors.white54)),
        ],
      ),
    );
  }

  static Widget menuCard(IconData icon, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(icon, size: 30, color: Colors.blue),

          const SizedBox(height: 8),

          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

          Text(subtitle, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  static Widget activityCard(String title, String subtitle, String time) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFFE3F2FD),

            child: Icon(Icons.school, color: Colors.blue),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                Text(subtitle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          Text(time, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
