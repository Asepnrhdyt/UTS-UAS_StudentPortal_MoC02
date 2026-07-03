import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Courses",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Current Semester",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            courseCard(
              Colors.blue,
              Icons.phone_android,
              "Mobile Computing",
              "3 SKS",
              "Mr. Fatwa Amin",
              "A",
            ),

            const SizedBox(height: 15),

            courseCard(
              Colors.green,
              Icons.smart_toy,
              "Artificial Intelligence",
              "3 SKS",
              "Mr. Haikal",
              "A",
            ),

            const SizedBox(height: 15),

            courseCard(
              Colors.orange,
              Icons.storage,
              "Database Systems",
              "3 SKS",
              "Mr. Daniel",
              "A-",
            ),

            const SizedBox(height: 15),

            courseCard(
              Colors.purple,
              Icons.design_services,
              "UI/UX Design",
              "2 SKS",
              "Mr. Rizky",
              "A",
            ),

            const SizedBox(height: 15),

            courseCard(
              Colors.red,
              Icons.code,
              "Web Programming",
              "3 SKS",
              "Mr. Feryan",
              "B+",
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [
                  Icon(Icons.school, size: 50, color: Colors.blue),

                  SizedBox(height: 10),

                  Text(
                    "Academic Summary",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Column(
                        children: [
                          Text(
                            "14",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Text("SKS"),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text("Courses"),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            "3.75",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Text("GPA"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },

                icon: const Icon(Icons.home),

                label: const Text(
                  "BACK TO HOME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1565C0),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget courseCard(
    Color color,
    IconData icon,
    String course,
    String sks,
    String lecturer,
    String grade,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: color.withValues(alpha: 0.15),

            child: Icon(icon, color: color),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  course,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 4),

                Text(sks),

                const SizedBox(height: 4),

                Text(lecturer, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          Container(
            width: 50,
            height: 50,

            decoration: BoxDecoration(
              color: Colors.green.shade100,
              shape: BoxShape.circle,
            ),

            child: Center(
              child: Text(
                grade,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
