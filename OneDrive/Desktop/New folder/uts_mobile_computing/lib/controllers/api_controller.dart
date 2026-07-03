import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/assignment_model.dart';

class ApiController {
  // Fungsi ini adalah 'kurir' yang mengambil data dari internet
  static Future<List<AssignmentModel>> fetchAssignments() async {
    // Kita meminjam API publik untuk mengambil 5 data tugas
    final url = Uri.parse(
      'https://jsonplaceholder.typicode.com/todos?_limit=5',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Jika berhasil menembus server, terjemahkan datanya
      List jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((data) => AssignmentModel.fromJson(data))
          .toList();
    } else {
      // Jika gagal/internet mati
      throw Exception('Gagal mengambil data dari API');
    }
  }
}
