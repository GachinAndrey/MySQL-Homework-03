-- используем БД vk
USE vk;
-- показываем все таблицы
SHOW tables;

/* Можно дополнительно создать таблицы:  */
-- 1. Посты пользователя

DROP TABLE user_posts;
CREATE TABLE user_posts(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	media_types_id INT UNSIGNED,
	txt TEXT NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX fk_user_posts_from_user_idx (from_user_id),
	CONSTRAINT fk_user_posts_users FOREIGN KEY (from_user_id) REFERENCES users (id)
);

-- 2. Чёрный список

CREATE TABLE blacklist(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX
	CONSTRAINT
);

-- 3.Посты в сообществе

CREATE TABLE communities_posts(
 	community_id BIGINT UNSIGNED NOT NULL,
  	user_id BIGINT UNSIGNED NOT NULL,
  	media_types_id INT UNSIGNED,
	txt TEXT NOT NULL,
  	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  	PRIMARY KEY (community_id, user_id),
 	INDEX communities_posts_users_comm_idx (community_id),
  	INDEX communities_posts_users_users_idx (user_id),
  	CONSTRAINT fk_communities_posts_users_comm FOREIGN KEY (community_id) REFERENCES communities (id),
  	CONSTRAINT fk_communities_posts_users_users FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB;
