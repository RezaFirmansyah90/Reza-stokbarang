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
session_start();
// hapus session
session_destroy();

// alihkan ke halaman login (index.php) dan berikan alert = 2
header('Location: index.php?alert=2');
?>