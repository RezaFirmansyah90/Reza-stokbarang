<!-- Aplikasi Persediaan Obat pada Apotek
*******************************************************
* Developer    : Vanny Hadiwijaya, S.Kom
* Company      : Wijaya Studio
* Release Date : 14 November 2018
* Blog         : vannyhadiwijaya.blogspot.com
* E-mail       : vannyhadiwijaya@gmail.com
* Phone        : +62-821-3297-2137
-->

<?php
/* panggil file database.php untuk koneksi ke database */
require_once "config/database.php";
/* panggil file fungsi tambahan */
require_once "config/fungsi_tanggal.php";
require_once "config/fungsi_rupiah.php";

// fungsi untuk pengecekan status login user 
// jika user belum login, alihkan ke halaman login dan tampilkan message = 1
if (empty($_SESSION['username']) && empty($_SESSION['password'])){
	echo "<meta http-equiv='refresh' content='0; url=index.php?alert=1'>";
}
// jika user sudah login, maka jalankan perintah untuk pemanggilan file halaman konten
else {
	// jika halaman konten yang dipilih beranda, panggil file view beranda
	if ($_GET['module'] == 'beranda') {
		include "modules/beranda/view.php";
	}

	// jika halaman konten yang dipilih helm, panggil file view helm
	elseif ($_GET['module'] == 'helm') {
		include "modules/helm/view.php";
	}

	// jika halaman konten yang dipilih form helm, panggil file form helm
	elseif ($_GET['module'] == 'form_helm') {
		include "modules/helm/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih helm masuk, panggil file view helm masuk
	elseif ($_GET['module'] == 'helm_masuk') {
		include "modules/helm-masuk/view.php";
	}

	// jika halaman konten yang dipilih form helm masuk, panggil file form helm masuk
	elseif ($_GET['module'] == 'form_helm_masuk') {
		include "modules/helm-masuk/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih helm keluar, panggil file view helm keluar
	elseif ($_GET['module'] == 'helm_keluar') {
		include "modules/helm-keluar/view.php";
	}

	// jika halaman konten yang dipilih form helm keluar, panggil file form helm keluar
	elseif ($_GET['module'] == 'form_helm_keluar') {
		include "modules/helm-keluar/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih laporan stok, panggil file view laporan stok
	elseif ($_GET['module'] == 'lap_stok') {
		include "modules/lap-stok/view.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih laporan helm masuk, panggil file view laporan helm masuk
	elseif ($_GET['module'] == 'lap_helm_masuk') {
		include "modules/lap-helm-masuk/view.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih laporan helm keluar, panggil file view laporan helm keluar
	elseif ($_GET['module'] == 'lap_helm_keluar') {
		include "modules/lap-helm-keluar/view.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih user, panggil file view user
	elseif ($_GET['module'] == 'user') {
		include "modules/user/view.php";
	}

	// jika halaman konten yang dipilih form user, panggil file form user
	elseif ($_GET['module'] == 'form_user') {
		include "modules/user/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih profil, panggil file view profil
	elseif ($_GET['module'] == 'profil') {
		include "modules/profil/view.php";
	}

	// jika halaman konten yang dipilih form profil, panggil file form profil
	elseif ($_GET['module'] == 'form_profil') {
		include "modules/profil/form.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih password, panggil file view password
	elseif ($_GET['module'] == 'password') {
		include "modules/password/view.php";
	}
}
?>