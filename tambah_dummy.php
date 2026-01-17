<?php
// tambah_dummy.php
include 'koneksi.php';

// KONFIGURASI: Mau nambah berapa artikel?
$jumlah_tambahan = 100; 

// Array data acak untuk variasi
$kategori_list = ["News", "Bisnis", "Sport", "Seleb", "Tekno", "Otomotif", "Lifestyle", "Travel"];
$sumber_list   = ["Liputan6", "Detik", "Kompas", "CNN", "Tribun", "Antara"];
$topik_list    = ["Harga Emas", "Pilkada Serentak", "Timnas Indonesia", "Smartphone Baru", "Wisata Bali", "Resep Masakan", "Investasi Saham", "Gempa Terkini"];
$aksi_list     = ["Melonjak Tajam", "Jadi Sorotan", "Bikin Bangga", "Resmi Dirilis", "Ramai Dikunjungi", "Wajib Dicoba", "Anjlok Parah", "Guncang Warga"];

echo "<h3>🚀 Sedang Menambahkan $jumlah_tambahan Artikel Baru...</h3><hr>";

for ($i = 1; $i <= $jumlah_tambahan; $i++) {
    
    // 1. Acak Data
    $kat    = $kategori_list[array_rand($kategori_list)];
    $sumber = $sumber_list[array_rand($sumber_list)];
    $topik  = $topik_list[array_rand($topik_list)];
    $aksi   = $aksi_list[array_rand($aksi_list)];
    
    // Buat Judul Unik
    // Contoh: [Tekno] Smartphone Baru Resmi Dirilis - Diliput oleh Detik
    $judul  = "[$kat] $topik $aksi - Diliput oleh $sumber";
    
    // Buat Isi Dummy
    $isi    = "<p><strong>$judul</strong>.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ini adalah artikel tambahan otomatis ke-$i. Berita ini digenerate sistem untuk menambah volume data website Anda agar terlihat penuh.</p><p>Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.</p>";

    // Gambar Random (Pakai Picsum dengan ID acak biar beda-beda)
    // Kita pakai rand(1, 1000) agar gambarnya ngambil seed acak
    $seed_acak = rand(1000, 9999);
    $gambar = "https://picsum.photos/seed/$seed_acak/800/600";
    
    // Tanggal Random (Mundur 1-30 hari ke belakang biar timeline-nya variatif)
    $hari_mundur = rand(0, 30);
    $tanggal = date('Y-m-d H:i:s', strtotime("-$hari_mundur days"));

    // 2. Masukkan ke Database
    // Perhatikan: Tidak ada 'TRUNCATE', jadi data lama AMAN.
    $sql = "INSERT INTO news (judul, isi, gambar, tanggal, kategori) VALUES ('$judul', '$isi', '$gambar', '$tanggal', '$kat')";
    
    if ($conn->query($sql)) {
        echo "✅ Tambah Data ke-$i Sukses: $judul <br>";
    } else {
        echo "❌ Gagal: " . $conn->error . "<br>";
    }
}

echo "<hr><h3>🎉 SELESAI! Sekarang total artikel kamu bertambah $jumlah_tambahan biji.</h3>";
echo "<a href='index.html'>Lihat Website Sekarang >></a>";
?>