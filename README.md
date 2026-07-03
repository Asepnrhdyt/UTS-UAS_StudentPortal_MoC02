# Cakrawala Student Portal

Aplikasi Mobile Computing untuk mempermudah akses portal akademik mahasiswa Universitas Cakrawala. Aplikasi ini merupakan pengembangan lanjut dari proyek UTS untuk memenuhi kriteria Ujian Akhir Semester (UAS) mata kuliah Mobile Computing.

## 🚀 Fitur Utama

- **Authentication System**: Halaman login yang aman dengan fitur *Remember Me* menggunakan `shared_preferences`.
- **MVC Architecture**: Struktur kode yang terorganisir (*Model-View-Controller*) untuk memisahkan logika bisnis dan tampilan antarmuka.
- **REST API Integration**: Menampilkan data tugas (*Assignments*) secara dinamis yang diambil langsung dari layanan API publik.
- **Responsive UI**: Tampilan yang dioptimalkan untuk perangkat mobile.

## 🛠 Teknologi yang Digunakan

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: SetState (Basic State Management)
- **Local Storage**: `shared_preferences`
- **Networking**: `http` (untuk integrasi REST API)

## Halaman LOADING SCREEN
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c1855732-cdf3-424e-a44e-afe4b7e1a33a" />

## Halaman LOGIN
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b3e70226-2e1b-4da1-bb53-cd8f1d8de732" />

## Halaman DASHBOARD
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/603dfc7c-cc91-44f5-9f36-241f4ba0ae79" />

## Halaman ASSIGNMENTS
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/10767bfb-5f87-4b96-b937-02fd42c7a9c6" />

## 📋 Struktur Folder (MVC)

```text
lib/
├── controllers/    # Logika pengambil data (API)
├── models/         # Format data (Data structure)
├── views/          # Tampilan antarmuka (UI)
└── main.dart       # Titik masuk aplikasi
