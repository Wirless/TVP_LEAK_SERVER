CREATE TABLE IF NOT EXISTS `web_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `rl_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `recovery_key` text NOT NULL,
  `shop_coins` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `referral` varchar(191) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `bonus_recive` int(11) DEFAULT NULL,
  `referral_bonus` int(11) NOT NULL DEFAULT 25,
  `confirmation_key` text DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `next_resend` timestamp NULL DEFAULT NULL,
  `confirmations_count` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(191) DEFAULT NULL,
  `creation_ip` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_account_recoveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `old_email` text DEFAULT NULL,
  `confirmation_key` text DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_blacklist_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_change_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `old_email` text DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmation_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_change_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `confirmation_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_creatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_guilds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guild_id` int(11) NOT NULL,
  `logo_name` varchar(191) NOT NULL DEFAULT 'default_logo.gif',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_guild_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_guild_resign_leaderships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `new_player_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `house_id` bigint(20) UNSIGNED NOT NULL,
  `entry_x` bigint(20) UNSIGNED NOT NULL,
  `entry_y` bigint(20) UNSIGNED NOT NULL,
  `entry_z` bigint(20) UNSIGNED NOT NULL,
  `rent` bigint(20) UNSIGNED NOT NULL,
  `town_id` bigint(20) UNSIGNED NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_house_move_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `house_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_house_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `move_out_id` bigint(20) UNSIGNED NOT NULL,
  `new_owner` int(11) NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `accepted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_lost_account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `confirmation_key` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_manual_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `external_name` varchar(191) NOT NULL,
  `receiver_name` varchar(191) NOT NULL,
  `server_name` varchar(191) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  `payment_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'pending, approved, rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `category` tinyint(4) NOT NULL,
  `player_id` int(11) NOT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `article_text` longtext DEFAULT NULL,
  `article_image` longtext DEFAULT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_online_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_count` int(11) NOT NULL,
  `world_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `coins` int(11) NOT NULL,
  `session_id` varchar(191) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_payment_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `processing_time` tinyint(4) NOT NULL,
  `additional_title` varchar(191) DEFAULT NULL,
  `additional_text` varchar(255) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_shop_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(191) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `target` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_shop_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `value` decimal(6,2) NOT NULL,
  `coins` int(11) NOT NULL,
  `prefix` varchar(191) DEFAULT NULL,
  `suffix` varchar(191) DEFAULT NULL,
  `payment_option_id` bigint(20) UNSIGNED NOT NULL,
  `decimals` tinyint(4) NOT NULL DEFAULT 2,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `web_spells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `words` varchar(191) NOT NULL,
  `category` tinyint(4) NOT NULL COMMENT 'undefined, instant, rune, conjuring, house',
  `mana` int(11) NOT NULL,
  `mlvl` int(11) NOT NULL,
  `premium` tinyint(4) NOT NULL,
  `vocations` varchar(191) NOT NULL,
  `param` tinyint(4) NOT NULL,
  `learn` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
