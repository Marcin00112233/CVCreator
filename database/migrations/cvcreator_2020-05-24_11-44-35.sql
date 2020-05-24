-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Maj 2020, 11:44
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cvcreator`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aboutme`
--

CREATE TABLE `aboutme` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_aboutme` bigint(20) UNSIGNED NOT NULL,
  `id_aboutme_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aboutmepackage`
--

CREATE TABLE `aboutmepackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_aboutme` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aboutmepackagename`
--

CREATE TABLE `aboutmepackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `consent`
--

CREATE TABLE `consent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_consent` bigint(20) UNSIGNED NOT NULL,
  `id_consent_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `consentpackage`
--

CREATE TABLE `consentpackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_consent` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `consentpackagename`
--

CREATE TABLE `consentpackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_course` bigint(20) UNSIGNED NOT NULL,
  `id_course_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `coursespackage`
--

CREATE TABLE `coursespackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_courses` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `coursespackagename`
--

CREATE TABLE `coursespackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv`
--

CREATE TABLE `cv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cv` bigint(20) UNSIGNED NOT NULL,
  `id_cv_sequence` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `education_id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `skills_id` bigint(20) UNSIGNED NOT NULL,
  `extraskills` bigint(20) UNSIGNED NOT NULL,
  `tools_id` bigint(20) UNSIGNED NOT NULL,
  `extratools` bigint(20) UNSIGNED NOT NULL,
  `courses_id` bigint(20) UNSIGNED NOT NULL,
  `extrainformations_id` bigint(20) UNSIGNED NOT NULL,
  `consent_id` bigint(20) UNSIGNED NOT NULL,
  `aboutme_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `personaldata_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cvname`
--

CREATE TABLE `cvname` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cvname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_education` bigint(20) UNSIGNED NOT NULL,
  `id_education_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `educationpackage`
--

CREATE TABLE `educationpackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_education` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `educationpackagename`
--

CREATE TABLE `educationpackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experience`
--

CREATE TABLE `experience` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_experience` bigint(20) UNSIGNED NOT NULL,
  `id_experience_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `termsofreference` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiencepackage`
--

CREATE TABLE `experiencepackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_experience` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiencepackagename`
--

CREATE TABLE `experiencepackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `extrainformations`
--

CREATE TABLE `extrainformations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_extrainformations` bigint(20) UNSIGNED NOT NULL,
  `id_extrainformations_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `extrainformationspackage`
--

CREATE TABLE `extrainformationspackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_extrainformations` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `extrainformationspackagename`
--

CREATE TABLE `extrainformationspackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job`
--

CREATE TABLE `job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_job` bigint(20) UNSIGNED NOT NULL,
  `id_job_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobpackage`
--

CREATE TABLE `jobpackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_job` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobpackagename`
--

CREATE TABLE `jobpackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personaldata`
--

CREATE TABLE `personaldata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_personaldata` bigint(20) UNSIGNED NOT NULL,
  `id_personaldata_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dataname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personaldatapackage`
--

CREATE TABLE `personaldatapackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_personaldata` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personaldatapackagename`
--

CREATE TABLE `personaldatapackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_projects` bigint(20) UNSIGNED NOT NULL,
  `id_projects_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projectspackage`
--

CREATE TABLE `projectspackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_projects` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projectspackagename`
--

CREATE TABLE `projectspackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_skills` bigint(20) UNSIGNED NOT NULL,
  `id_skills_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `technologies` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skillspackage`
--

CREATE TABLE `skillspackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_skills` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skillspackagename`
--

CREATE TABLE `skillspackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tools`
--

CREATE TABLE `tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_tools` bigint(20) UNSIGNED NOT NULL,
  `id_tools_sequence` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tool` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toolspackage`
--

CREATE TABLE `toolspackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_package` bigint(20) UNSIGNED NOT NULL,
  `id_package_sequence` tinyint(3) UNSIGNED NOT NULL,
  `id_tools` bigint(20) UNSIGNED NOT NULL,
  `dateofupdate` varchar(17) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `toolspackagename`
--

CREATE TABLE `toolspackagename` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aboutme`
--
ALTER TABLE `aboutme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aboutme_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `aboutmepackage`
--
ALTER TABLE `aboutmepackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aboutme` (`id_aboutme`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `aboutmepackagename`
--
ALTER TABLE `aboutmepackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `consent`
--
ALTER TABLE `consent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consent_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `consentpackage`
--
ALTER TABLE `consentpackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_consent` (`id_consent`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `consentpackagename`
--
ALTER TABLE `consentpackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `coursespackage`
--
ALTER TABLE `coursespackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_courses` (`id_courses`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `coursespackagename`
--
ALTER TABLE `coursespackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `extraskills_id` (`extraskills`),
  ADD KEY `aboutme_id` (`aboutme_id`),
  ADD KEY `consent_id` (`consent_id`),
  ADD KEY `courses_id` (`courses_id`),
  ADD KEY `education_id` (`education_id`),
  ADD KEY `experience_id` (`experience_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `personaldata_id` (`personaldata_id`),
  ADD KEY `skills_id` (`skills_id`),
  ADD KEY `tools_id` (`tools_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `id_cv` (`id_cv`),
  ADD KEY `cv_ibfk_19` (`extrainformations_id`),
  ADD KEY `cv_ibfk_22` (`projects_id`),
  ADD KEY `cv_extratools_id_foreign` (`extratools`);

--
-- Indeksy dla tabeli `cvname`
--
ALTER TABLE `cvname`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `educationpackage`
--
ALTER TABLE `educationpackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_education` (`id_education`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `educationpackagename`
--
ALTER TABLE `educationpackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experience_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `experiencepackage`
--
ALTER TABLE `experiencepackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_experience` (`id_experience`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `experiencepackagename`
--
ALTER TABLE `experiencepackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`) USING BTREE;

--
-- Indeksy dla tabeli `extrainformations`
--
ALTER TABLE `extrainformations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extrainformations_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `extrainformationspackage`
--
ALTER TABLE `extrainformationspackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_extrainformations` (`id_extrainformations`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `extrainformationspackagename`
--
ALTER TABLE `extrainformationspackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `jobpackage`
--
ALTER TABLE `jobpackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_job` (`id_job`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `jobpackagename`
--
ALTER TABLE `jobpackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personaldata_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `personaldatapackage`
--
ALTER TABLE `personaldatapackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personaldata` (`id_personaldata`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `personaldatapackagename`
--
ALTER TABLE `personaldatapackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `projectspackage`
--
ALTER TABLE `projectspackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_projects` (`id_projects`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `projectspackagename`
--
ALTER TABLE `projectspackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `skillspackage`
--
ALTER TABLE `skillspackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_skills` (`id_skills`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `skillspackagename`
--
ALTER TABLE `skillspackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tools_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `toolspackage`
--
ALTER TABLE `toolspackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tools` (`id_tools`),
  ADD KEY `id_package` (`id_package`);

--
-- Indeksy dla tabeli `toolspackagename`
--
ALTER TABLE `toolspackagename`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `aboutme`
--
ALTER TABLE `aboutme`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `aboutmepackage`
--
ALTER TABLE `aboutmepackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `aboutmepackagename`
--
ALTER TABLE `aboutmepackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `consent`
--
ALTER TABLE `consent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `consentpackage`
--
ALTER TABLE `consentpackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `consentpackagename`
--
ALTER TABLE `consentpackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `coursespackage`
--
ALTER TABLE `coursespackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `coursespackagename`
--
ALTER TABLE `coursespackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cv`
--
ALTER TABLE `cv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cvname`
--
ALTER TABLE `cvname`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `educationpackage`
--
ALTER TABLE `educationpackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `educationpackagename`
--
ALTER TABLE `educationpackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `experience`
--
ALTER TABLE `experience`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `experiencepackage`
--
ALTER TABLE `experiencepackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `experiencepackagename`
--
ALTER TABLE `experiencepackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `extrainformations`
--
ALTER TABLE `extrainformations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `extrainformationspackage`
--
ALTER TABLE `extrainformationspackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `extrainformationspackagename`
--
ALTER TABLE `extrainformationspackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `jobpackage`
--
ALTER TABLE `jobpackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `jobpackagename`
--
ALTER TABLE `jobpackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `personaldatapackage`
--
ALTER TABLE `personaldatapackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `personaldatapackagename`
--
ALTER TABLE `personaldatapackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `projectspackage`
--
ALTER TABLE `projectspackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `projectspackagename`
--
ALTER TABLE `projectspackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `skillspackage`
--
ALTER TABLE `skillspackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `skillspackagename`
--
ALTER TABLE `skillspackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `tools`
--
ALTER TABLE `tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `toolspackage`
--
ALTER TABLE `toolspackage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `toolspackagename`
--
ALTER TABLE `toolspackagename`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `aboutme`
--
ALTER TABLE `aboutme`
  ADD CONSTRAINT `aboutme_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `aboutmepackage`
--
ALTER TABLE `aboutmepackage`
  ADD CONSTRAINT `aboutmepackage_ibfk_1` FOREIGN KEY (`id_aboutme`) REFERENCES `aboutme` (`id`),
  ADD CONSTRAINT `aboutmepackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `aboutmepackagename` (`id`);

--
-- Ograniczenia dla tabeli `aboutmepackagename`
--
ALTER TABLE `aboutmepackagename`
  ADD CONSTRAINT `aboutmepackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `consent`
--
ALTER TABLE `consent`
  ADD CONSTRAINT `consent_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `consentpackage`
--
ALTER TABLE `consentpackage`
  ADD CONSTRAINT `consentpackage_ibfk_1` FOREIGN KEY (`id_consent`) REFERENCES `consent` (`id`),
  ADD CONSTRAINT `consentpackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `consentpackagename` (`id`);

--
-- Ograniczenia dla tabeli `consentpackagename`
--
ALTER TABLE `consentpackagename`
  ADD CONSTRAINT `consentpackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `coursespackage`
--
ALTER TABLE `coursespackage`
  ADD CONSTRAINT `coursespackage_ibfk_1` FOREIGN KEY (`id_courses`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `coursespackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `coursespackagename` (`id`);

--
-- Ograniczenia dla tabeli `coursespackagename`
--
ALTER TABLE `coursespackagename`
  ADD CONSTRAINT `coursespackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `cv_extraskills_id_foreign` FOREIGN KEY (`extraskills`) REFERENCES `skillspackagename` (`id`),
  ADD CONSTRAINT `cv_extratools_id_foreign` FOREIGN KEY (`extratools`) REFERENCES `toolspackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_12` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cv_ibfk_13` FOREIGN KEY (`id_cv`) REFERENCES `cvname` (`id`),
  ADD CONSTRAINT `cv_ibfk_14` FOREIGN KEY (`aboutme_id`) REFERENCES `aboutmepackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_15` FOREIGN KEY (`experience_id`) REFERENCES `experiencepackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_16` FOREIGN KEY (`consent_id`) REFERENCES `consentpackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_17` FOREIGN KEY (`courses_id`) REFERENCES `coursespackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_18` FOREIGN KEY (`education_id`) REFERENCES `educationpackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_19` FOREIGN KEY (`extrainformations_id`) REFERENCES `extrainformationspackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_20` FOREIGN KEY (`personaldata_id`) REFERENCES `personaldatapackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_21` FOREIGN KEY (`job_id`) REFERENCES `jobpackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_22` FOREIGN KEY (`projects_id`) REFERENCES `projectspackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_23` FOREIGN KEY (`skills_id`) REFERENCES `skillspackagename` (`id`),
  ADD CONSTRAINT `cv_ibfk_24` FOREIGN KEY (`tools_id`) REFERENCES `toolspackagename` (`id`);

--
-- Ograniczenia dla tabeli `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `educationpackage`
--
ALTER TABLE `educationpackage`
  ADD CONSTRAINT `educationpackage_ibfk_1` FOREIGN KEY (`id_education`) REFERENCES `education` (`id`),
  ADD CONSTRAINT `educationpackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `educationpackagename` (`id`);

--
-- Ograniczenia dla tabeli `educationpackagename`
--
ALTER TABLE `educationpackagename`
  ADD CONSTRAINT `educationpackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `experiencepackage`
--
ALTER TABLE `experiencepackage`
  ADD CONSTRAINT `experiencepackage_ibfk_1` FOREIGN KEY (`id_experience`) REFERENCES `experience` (`id`),
  ADD CONSTRAINT `experiencepackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `experiencepackagename` (`id`);

--
-- Ograniczenia dla tabeli `experiencepackagename`
--
ALTER TABLE `experiencepackagename`
  ADD CONSTRAINT `experiencepackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `extrainformations`
--
ALTER TABLE `extrainformations`
  ADD CONSTRAINT `extrainformations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `extrainformationspackage`
--
ALTER TABLE `extrainformationspackage`
  ADD CONSTRAINT `extrainformationspackage_ibfk_1` FOREIGN KEY (`id_extrainformations`) REFERENCES `extrainformations` (`id`),
  ADD CONSTRAINT `extrainformationspackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `extrainformationspackagename` (`id`);

--
-- Ograniczenia dla tabeli `extrainformationspackagename`
--
ALTER TABLE `extrainformationspackagename`
  ADD CONSTRAINT `extrainformationspackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `jobpackage`
--
ALTER TABLE `jobpackage`
  ADD CONSTRAINT `jobpackage_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `jobpackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `jobpackagename` (`id`);

--
-- Ograniczenia dla tabeli `jobpackagename`
--
ALTER TABLE `jobpackagename`
  ADD CONSTRAINT `jobpackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  ADD CONSTRAINT `personaldata_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `personaldatapackage`
--
ALTER TABLE `personaldatapackage`
  ADD CONSTRAINT `personaldatapackage_ibfk_1` FOREIGN KEY (`id_personaldata`) REFERENCES `personaldata` (`id`),
  ADD CONSTRAINT `personaldatapackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `personaldatapackagename` (`id`);

--
-- Ograniczenia dla tabeli `personaldatapackagename`
--
ALTER TABLE `personaldatapackagename`
  ADD CONSTRAINT `personaldatapackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `projectspackage`
--
ALTER TABLE `projectspackage`
  ADD CONSTRAINT `projectspackage_ibfk_1` FOREIGN KEY (`id_projects`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `projectspackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `projectspackagename` (`id`);

--
-- Ograniczenia dla tabeli `projectspackagename`
--
ALTER TABLE `projectspackagename`
  ADD CONSTRAINT `projectspackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `skillspackage`
--
ALTER TABLE `skillspackage`
  ADD CONSTRAINT `skillspackage_ibfk_1` FOREIGN KEY (`id_skills`) REFERENCES `skills` (`id`),
  ADD CONSTRAINT `skillspackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `skillspackagename` (`id`);

--
-- Ograniczenia dla tabeli `skillspackagename`
--
ALTER TABLE `skillspackagename`
  ADD CONSTRAINT `skillspackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `toolspackage`
--
ALTER TABLE `toolspackage`
  ADD CONSTRAINT `toolspackage_ibfk_1` FOREIGN KEY (`id_tools`) REFERENCES `tools` (`id`),
  ADD CONSTRAINT `toolspackage_ibfk_2` FOREIGN KEY (`id_package`) REFERENCES `toolspackagename` (`id`);

--
-- Ograniczenia dla tabeli `toolspackagename`
--
ALTER TABLE `toolspackagename`
  ADD CONSTRAINT `toolspackagename_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
