<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pengumuman Seleksi</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      padding: 20px;
      background-color: #f4f4f9;
    }
    h1 {
      color: #333;
    }
    input {
      padding: 10px;
      width: 300px;
      margin-top: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      padding: 10px 20px;
      margin-top: 10px;
      background-color: #3498db;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #2980b9;
    }
    .result {
      margin-top: 20px;
      font-size: 18px;
    }
    .result.success {
      color: green;
    }
    .result.fail {
      color: red;
    }
    .result.not-found {
      color: orange;
    }
  </style>
</head>
<body>
  <h1>Pengumuman Seleksi</h1>
  <p>Masukkan Nomor Induk Anda untuk mengetahui hasil seleksi:</p>
  <input type="text" id="nomorInduk" placeholder="Masukkan Nomor Induk">
  <br>
  <button onclick="cekHasil()">Cek Hasil</button>
  <div class="result" id="result"></div>

  <script>
    // Data peserta seleksi
    const peserta = [
      { nomor: "25025", nama: "Almaqhvirra Shoffa Novita", status: "Lolos" },
      { nomor: "25102", nama: "Ega Naryama Belva", status: "Lolos" },
      { nomor: "25075", nama: "Luvena Amanda Putri", status: "Tidak Lolos" },
      { nomor: "24834", nama: "Nahla Kalila Almaira", status: "Lolos" },
      { nomor: "24800", nama: "Sultan Rafi Muzaki", status: "Lolos" },
      { nomor: "24916", nama: "Anindya Putri Azalia", status: "Lolos" },
      { nomor: "24995", nama: "Fahry Haikal Ismail", status: "Lolos" },
      { nomor: "24861", nama: "Lutfiana Dzakia Putri", status: "Lolos" },
      { nomor: "25119", nama: "Qurota A'yun Maulidina", status: "Lolos" },
      { nomor: "24797", nama: "Ravada Fannet Muhammad", status: "Lolos" },
      { nomor: "25005", nama: "Muhammad Bagas Rizqullah", status: "Tidak Lolos" },
      { nomor: "25016", nama: "Sherly Winda Prasasti", status: "Tidak Lolos" },
      { nomor: "25131", nama: "Azalia Violetta Syifaa Baskara", status: "Tidak Lolos" }
    ];

    // Fungsi untuk mengecek hasil seleksi
    function cekHasil() {
      const input = document.getElementById("nomorInduk").value.trim();
      const hasil = peserta.find(p => p.nomor === input);
      const resultDiv = document.getElementById("result");

      if (hasil) {
        resultDiv.innerHTML = `<strong>${hasil.nama}</strong>, Anda dinyatakan <strong>${hasil.status}</strong>.`;
        resultDiv.className = `result ${hasil.status === "Lolos" ? "success" : "fail"}`;
      } else {
        resultDiv.innerHTML = "Nomor Induk tidak ditemukan.";
        resultDiv.className = "result not-found";
      }
    }
  </script>
</body>
</html>
