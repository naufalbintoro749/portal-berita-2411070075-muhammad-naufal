<?php
include 'koneksi.php';

// Tambahkan daftar kategori
$kategori_list = ["News", "Bisnis", "Sport", "Seleb", "Tekno", "Otomotif", "Lifestyle"];

echo "<h3>Reset & Generate Data Baru dengan Kategori...</h3><hr>";

// Kosongkan tabel dulu biar bersih (Opsional)
$conn->query("TRUNCATE TABLE news");

for ($i = 1; $i <= 50; $i++) {
    // Pilih kategori acak
    $kat_acak = $kategori_list[array_rand($kategori_list)];
    
    $judul  = "Berita $kat_acak: " . "Topik Hangat Nomor " . $i;
    $isi    = "Ini adalah contoh artikel untuk kategori $kat_acak. Lorem ipsum dolor sit amet.";
    
    // Gambar random
    $gambar = "https://picsum.photos/seed/" . $i . "/800/600"; 
    $nama_gambar_db = "dummy_image.jpg"; 

    // Masukkan kategori ke SQL
    $sql = "INSERT INTO news (judul, isi, gambar, tanggal, kategori) VALUES ('$judul', '$isi', '$nama_gambar_db', NOW(), '$kat_acak')";
    
    $conn->query($sql);
}

echo "✅ Selesai! Data dummy dengan kategori sudah dibuat.";
?>