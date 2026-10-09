CREATE TABLE IF NOT EXISTS mp_halloween_collections (
  event_id VARCHAR(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  skull_id VARCHAR(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  account_id VARCHAR(80) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  collected_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (event_id, skull_id),
  KEY account_lookup (event_id, account_id)
) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS mp_halloween_scores (
  event_id VARCHAR(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  account_id VARCHAR(80) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  display_name VARCHAR(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  skull_count INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (event_id, account_id),
  KEY ranking (event_id, skull_count)
) ENGINE=InnoDB;
