class AssignmentModel {
  final int id;
  final String title;
  final bool completed;

  AssignmentModel({
    required this.id,
    required this.title,
    required this.completed,
  });

  factory AssignmentModel.fromJson(Map<String, dynamic> json) {
    return AssignmentModel(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
