import 'package:flutter/material.dart';
import '../controllers/api_controller.dart';
import '../models/assignment_model.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  late Future<List<AssignmentModel>> futureAssignments;

  @override
  void initState() {
    super.initState();
    futureAssignments = ApiController.fetchAssignments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        title: const Text(
          "Assignments (API)",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder<List<AssignmentModel>>(
        future: futureAssignments,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            List<AssignmentModel> assignments = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: assignments.length,
              itemBuilder: (context, index) {
                final data = assignments[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: assignmentCard(
                    icon: data.completed
                        ? Icons.check_circle
                        : Icons.pending_actions,
                    iconColor: data.completed ? Colors.green : Colors.orange,
                    course: "Tugas #${data.id}",
                    task: data.title,
                    deadline: "TBD",
                    status: data.completed ? "Selesai" : "Pending",
                    statusColor: data.completed ? Colors.green : Colors.orange,
                  ),
                );
              },
            );
          }
          return const Center(child: Text("Tidak ada data."));
        },
      ),
    );
  }

  static Widget assignmentCard({
    required IconData icon,
    required Color iconColor,
    required String course,
    required String task,
    required String deadline,
    required String status,
    required Color statusColor,
  }) {
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
            backgroundColor: iconColor.withValues(alpha: 0.15),
            child: Icon(icon, color: iconColor),
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
                Text(task, maxLines: 1, overflow: TextOverflow.ellipsis),
                Text(
                  "Deadline: $deadline",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
