<?php
// api.php - VERSI FINAL (Lengkap)

// 1. Header (Agar bisa diakses frontend)
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Content-Type: application/json; charset=UTF-8");

// Matikan notifikasi error di layar agar JSON tidak rusak
ini_set('display_errors', 0); 
error_reporting(E_ALL);

include 'koneksi.php';

$method = $_SERVER['REQUEST_METHOD'];

// ==========================================================
// METHOD GET (MENGAMBIL DATA)
// ==========================================================
if ($method == 'GET') {
    
    // A. FILTER KATEGORI (api.php?kategori=Tekno)
    if (isset($_GET['kategori'])) {
        $kategori = $conn->real_escape_string($_GET['kategori']);
        $sql = "SELECT * FROM news WHERE kategori = '$kategori' ORDER BY id DESC";
        excecuteQuery($conn, $sql);
    }

    // B. PENCARIAN (api.php?cari=bitcoin)
    elseif (isset($_GET['cari'])) {
        $cari = $conn->real_escape_string($_GET['cari']);
        $sql = "SELECT * FROM news WHERE judul LIKE '%$cari%' OR isi LIKE '%$cari%' ORDER BY id DESC";
        excecuteQuery($conn, $sql);
    }
    
    // C. DETAIL SATU BERITA (api.php?id=1)
    elseif (isset($_GET['id'])) {
        $id = $_GET['id'];
        $stmt = $conn->prepare("SELECT * FROM news WHERE id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_assoc();

        if ($data) {
            // Logika Gambar (Detail)
            $data['gambar_url'] = getGambarUrl($data['gambar'], $data['id']);
            echo json_encode($data);
        } else {
            echo json_encode(["message" => "Berita tidak ditemukan"]);
        }
    } 

    // D. AMBIL SEMUA BERITA (Default)
    else {
        $sql = "SELECT * FROM news ORDER BY id DESC";
        excecuteQuery($conn, $sql);
    }
}

// ==========================================================
// METHOD POST (MENAMBAH BERITA)
// ==========================================================
elseif ($method == 'POST') {
    $judul    = $_POST['judul'];
    $isi      = $_POST['isi'];
    // Default kategori jika tidak dipilih adalah 'News'
    $kategori = isset($_POST['kategori']) ? $_POST['kategori'] : 'News'; 
    
    // Cek Upload Gambar
    if (isset($_FILES['gambar']['name']) && $_FILES['gambar']['name'] != "") {
        $nama_file = time() . '_' . $_FILES['gambar']['name'];
        $tmp_file  = $_FILES['gambar']['tmp_name'];
        $target    = 'uploads/' . $nama_file;
        
        if (move_uploaded_file($tmp_file, $target)) {
            $gambar_db = $nama_file;
        } else {
            echo json_encode(["status" => "error", "message" => "Gagal upload gambar"]);
            exit;
        }
    } else {
        $gambar_db = ""; // Atau bisa set default image
    }

    // Simpan ke Database
    $stmt = $conn->prepare("INSERT INTO news (judul, isi, gambar, kategori) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $judul, $isi, $gambar_db, $kategori);
    
    if ($stmt->execute()) {
        echo json_encode(["status" => "success", "message" => "Berita berhasil diterbitkan!"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Gagal menyimpan ke database"]);
    }
}

// ==========================================================
// FUNGSI BANTUAN (Agar kodingan lebih rapi)
// ==========================================================

// Fungsi 1: Eksekusi Query Banyak Data
function excecuteQuery($conn, $sql) {
    $result = $conn->query($sql);
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $row['gambar_url'] = getGambarUrl($row['gambar'], $row['id']);
        $data[] = $row;
    }
    echo json_encode($data);
}

// Fungsi 2: Logika Gambar Pintar (Dummy vs Upload)
function getGambarUrl($nama_gambar, $id) {
    if ($nama_gambar == 'dummy_image.jpg' || strpos($nama_gambar, 'http') !== false) {
        // Jika dummy, pakai picsum
        return "https://picsum.photos/seed/" . $id . "/400/300";
    } else {
        // Jika asli, pakai folder uploads
        return "http://localhost/portal-berita/uploads/" . $nama_gambar;
    }
}
?>
