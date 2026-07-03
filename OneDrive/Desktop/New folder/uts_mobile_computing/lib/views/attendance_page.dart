import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // HEADER
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),

                  const Expanded(
                    child: Text(
                      "Attendance",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // PROFILE CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),

                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Asep Nurhidayat",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 4),

                    Text("24120300009", style: TextStyle(color: Colors.grey)),

                    Text(
                      "S1 Ilmu Komputer",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ATTENDANCE CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1E88FF), Color(0xFF0B72F4)],
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        const Text(
                          "92%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: const Icon(
                            Icons.qr_code_2,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),

                    const Text(
                      "Attendance Rate",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "23 / 25 Classes Present",
                      style: TextStyle(color: Colors.white70),
                    ),

                    const SizedBox(height: 20),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),

                      child: const LinearProgressIndicator(
                        value: 0.92,
                        minHeight: 10,
                        backgroundColor: Colors.white24,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Excellent! Keep it up ✨",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Today's Classes",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              classItem(
                Colors.green.shade100,
                Colors.green,
                Icons.edit_note,
                "UI/UX Design",
                "08:00 - 09:40",
                "Lab 1.2",
                "Present",
                Colors.green.shade100,
                Colors.green,
              ),

              const SizedBox(height: 12),

              classItem(
                Colors.orange.shade100,
                Colors.orange,
                Icons.storage,
                "Database Systems",
                "10:00 - 11:40",
                "Lab 2.1",
                "Pending",
                Colors.orange.shade100,
                Colors.orange,
              ),

              const SizedBox(height: 12),

              classItem(
                Colors.blue.shade100,
                Colors.blue,
                Icons.code,
                "Web Programming",
                "13:00 - 14:40",
                "Lab 2.5",
                "Upcoming",
                Colors.blue.shade100,
                Colors.blue,
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Row(
                  children: [
                    Icon(Icons.analytics, color: Colors.blue, size: 40),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Weekly Summary",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "Attendance remains excellent this week.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      "92%",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in),
            label: "Attendance",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: "Courses",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: "Assignment",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  static Widget classItem(
    Color circleColor,
    Color iconColor,
    IconData icon,
    String title,
    String time,
    String lab,
    String status,
    Color statusBg,
    Color statusText,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: circleColor,
            child: Icon(icon, color: iconColor),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                Text(time, style: const TextStyle(color: Colors.grey)),

                Text(lab, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

            decoration: BoxDecoration(
              color: statusBg,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Text(
              status,
              style: TextStyle(color: statusText, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
