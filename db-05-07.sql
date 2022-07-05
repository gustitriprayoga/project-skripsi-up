-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.24-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk skripsi_ol2
CREATE DATABASE IF NOT EXISTS `skripsi_ol2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `skripsi_ol2`;

-- membuang struktur untuk table skripsi_ol2.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `id_num` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admins_user_id_foreign` (`user_id`),
  CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.admins: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
REPLACE INTO `admins` (`id`, `user_id`, `id_num`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-05-05 18:33:06', '2022-05-05 18:33:06');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.bimbingans
CREATE TABLE IF NOT EXISTS `bimbingans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `skripsi_id` bigint(20) unsigned DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.bimbingans: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `bimbingans` DISABLE KEYS */;
REPLACE INTO `bimbingans` (`id`, `skripsi_id`, `subject`, `comment`, `link`, `file`, `sender`, `created_at`, `updated_at`) VALUES
	(1, 2, 'BAB 3 OK', '<div>INI BUK&nbsp;</div>', 'http://www.linkzb.net/country/eng/index-yh.html', 'file-skripsi/Semester 7 OK.pdf', 'Gusti Tri Prayoga', '2022-05-11 15:15:20', '2022-05-11 15:15:20'),
	(2, 2, 'TEST', '<div>TEAS</div>', 'http://www.linkzb.net/country/eng/index-yh.html', 'file-skripsi/agusaan,+17859-26513-1-ED+Indri+Handayani+(181-190).pdf', 'Gusti Tri Prayoga', '2022-05-23 13:45:48', '2022-05-23 13:45:48'),
	(3, 1, 'bimbingan pertama', '<div>test</div>', 'https://mailtrap.io/inboxes/1731855/messages/2850290080', 'file-skripsi/300-Article Text-576-1-10-20150403.pdf', 'Gusti Tri Prayoga', '2022-06-27 13:25:26', '2022-06-27 13:25:26'),
	(4, 1, 'sdasdas', '<div>tes</div>', 'https://mailtrap.io/inboxes/1731855/messages/2850290080', 'file-skripsi/5331-14268-1-PB.pdf', 'dosen', '2022-06-27 13:29:04', '2022-06-27 13:29:04');
/*!40000 ALTER TABLE `bimbingans` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.dosens
CREATE TABLE IF NOT EXISTS `dosens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `nip` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dosens_user_id_foreign` (`user_id`),
  CONSTRAINT `dosens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.dosens: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `dosens` DISABLE KEYS */;
REPLACE INTO `dosens` (`id`, `user_id`, `nip`, `created_at`, `updated_at`) VALUES
	(1, 2, 30210301, '2022-05-05 18:33:42', '2022-05-05 18:33:42'),
	(2, 4, 20312312312312, '2022-05-08 13:04:49', '2022-05-08 13:04:49');
/*!40000 ALTER TABLE `dosens` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.dosen_topiks
CREATE TABLE IF NOT EXISTS `dosen_topiks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `topik_id` bigint(20) unsigned DEFAULT NULL,
  `dosen_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dosen_topiks_topik_id_foreign` (`topik_id`),
  KEY `dosen_topiks_dosen_id_foreign` (`dosen_id`),
  CONSTRAINT `dosen_topiks_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dosen_topiks_topik_id_foreign` FOREIGN KEY (`topik_id`) REFERENCES `topiks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.dosen_topiks: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `dosen_topiks` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_topiks` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.jadwals
CREATE TABLE IF NOT EXISTS `jadwals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `skripsi_id` bigint(20) unsigned NOT NULL,
  `link_sidang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_seminar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penguji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sidang` timestamp NULL DEFAULT NULL,
  `tgl_seminar` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.jadwals: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `jadwals` DISABLE KEYS */;
REPLACE INTO `jadwals` (`id`, `skripsi_id`, `link_sidang`, `link_seminar`, `penguji`, `tgl_sidang`, `tgl_seminar`, `created_at`, `updated_at`) VALUES
	(1, 1, 'test', 'test', 'dosen2', '2022-05-20 01:39:00', '2022-05-21 01:39:00', '2022-05-05 18:38:23', '2022-06-27 13:30:16'),
	(2, 2, '312312', '312312', 'dosen', '2022-05-25 20:47:00', '2022-09-16 20:47:00', '2022-05-23 13:46:31', '2022-05-23 13:47:27'),
	(3, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-27 13:29:15', '2022-06-27 13:29:15');
/*!40000 ALTER TABLE `jadwals` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.kategoris
CREATE TABLE IF NOT EXISTS `kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.kategoris: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
REPLACE INTO `kategoris` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'RANCANG BANGUNS', '2022-05-08 21:59:48', '2022-05-08 21:59:48'),
	(2, 'GIS', '2022-06-27 20:19:35', '2022-06-27 20:19:35');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.mahasiswas
CREATE TABLE IF NOT EXISTS `mahasiswas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `nrp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mahasiswas_user_id_foreign` (`user_id`),
  CONSTRAINT `mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.mahasiswas: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `mahasiswas` DISABLE KEYS */;
REPLACE INTO `mahasiswas` (`id`, `user_id`, `nrp`, `created_at`, `updated_at`) VALUES
	(2, 3, 18552010, '2022-05-05 18:34:17', '2022-05-05 18:34:17');
/*!40000 ALTER TABLE `mahasiswas` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.migrations: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(4, '2021_11_25_155205_create_skripsis_table', 1),
	(5, '2021_11_30_163204_create_bimbingans_table', 1),
	(6, '2021_11_30_172916_create_topiks_table', 1),
	(7, '2021_11_30_181555_create_jadwals_table', 1),
	(8, '2021_12_02_152348_create_kategoris_table', 1),
	(9, '2021_12_08_184048_create_roles_table', 1),
	(10, '2021_12_09_000000_create_users_table', 1),
	(11, '2021_12_09_074741_create_admins_table', 1),
	(12, '2021_12_09_074751_create_dosens_table', 1),
	(13, '2021_12_09_074759_create_mahasiswas_table', 1),
	(14, '2021_12_11_092102_create_dosen_topiks_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.roles: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`role_id`, `role_name`, `role_slug`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin', NULL, NULL),
	(2, 'Dosen', 'dosen', NULL, NULL),
	(3, 'Mahasiswa', 'mahasiswa', NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.skripsis
CREATE TABLE IF NOT EXISTS `skripsis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `topik_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.skripsis: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `skripsis` DISABLE KEYS */;
REPLACE INTO `skripsis` (`id`, `topik_id`, `status`, `subject`, `comment`, `link`, `file`, `created_at`, `updated_at`) VALUES
	(1, 39, 'Approve', 'sdasdas', '<div>tes</div>', 'https://mailtrap.io/inboxes/1731855/messages/2850290080', 'file-skripsi/5331-14268-1-PB.pdf', '2022-06-27 13:23:50', '2022-06-27 13:29:15'),
	(2, 39, 'Revisi', NULL, NULL, NULL, NULL, '2022-06-27 13:23:54', '2022-06-27 13:23:54');
/*!40000 ALTER TABLE `skripsis` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.topiks
CREATE TABLE IF NOT EXISTS `topiks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mahasiswa_id` bigint(20) unsigned DEFAULT NULL,
  `dosen_id` bigint(20) unsigned DEFAULT NULL,
  `kategori_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.topiks: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `topiks` DISABLE KEYS */;
REPLACE INTO `topiks` (`id`, `mahasiswa_id`, `dosen_id`, `kategori_id`, `title`, `status`, `comment`, `created_at`, `updated_at`) VALUES
	(39, 2, 1, 1, 'RANCANG BANGUN SISTEM SKIRPSI ONLINE', 'Diterima', '<div>test</div>', '2022-06-27 13:23:01', '2022-06-27 13:23:50');
/*!40000 ALTER TABLE `topiks` ENABLE KEYS */;

-- membuang struktur untuk table skripsi_ol2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel skripsi_ol2.users: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `role_id`, `name`, `username`, `contact`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin', 'admin', '62', 'admin@gmail.com', '2022-05-08 21:59:57', '$2y$10$shBAa8NAC7A.53ALRiJ3NOAw1MtGmjjlN5kV7/pti53boZfK6exlS', NULL, '2022-05-05 18:33:06', '2022-05-05 18:33:06'),
	(2, 2, 'dosen', 'dosen@gmail.com', '62', 'dosen@gmail.com', '2022-05-08 21:59:58', '$2y$10$AXS76PTBD8VPPIHdMFQw3eh53FBVsZQcI2QLlJFJUpNQOQyqnWyWu', NULL, '2022-05-05 18:33:42', '2022-05-05 18:33:42'),
	(3, 3, 'Gusti Tri Prayoga', 'gusti', '62', 'gusti@gmail.com', '2022-05-08 21:59:58', '$2y$10$9Q6OgFvNPm7mO5D1nRSFKeoDEj/qHTZXjWCu/rx3etsBus.vupaqm', NULL, '2022-05-05 18:34:17', '2022-05-05 18:34:17'),
	(4, 2, 'dosen2', 'dosen2', '62', 'dosen2@gmail.com', '2022-05-08 21:59:59', '$2y$10$3W342y.GSC7MIbotrzjVquc3oSozX5D7JVbw4vu82g7GYuI3qUN2m', NULL, '2022-05-08 13:04:49', '2022-05-08 13:04:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
