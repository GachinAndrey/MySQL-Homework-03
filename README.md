1. Проанализировать структуру БД vk с помощью скрипта, который мы создали на занятии (les-3.sql),
и внести предложения по усовершенствованию (если такие идеи есть). Создайте у себя БД vk с помощью скрипта из материалов урока. 
Напишите пожалуйста, всё ли понятно по структуре.
  Базу у себя создал. Не понял синтаксис связи между таблицами CONSTRAINT fk_profiles_users FOREIGN KEY (user_id) REFERENCES users (id).
  fk_profiles_users - что это и откуда берётся?
  И INDEX fk_messages_from_user_idx (from_user_id), - fk_messages_from_user и откуда берется эта запись?
  Я думаю, что это ссылка на колонку в таблице, но я не понял как это работает и почему именно так называется.
  
 2.Придумать 2-3 таблицы для БД vk, которую мы создали на занятии (с перечнем полей, указанием индексов и внешних ключей).
Прислать результат в виде скрипта *.sql.
  Можно дополнительно создать таблицы:
   1. Посты пользователя (id поста,id пользователя, медиа по необходимости, текст обязательно, дата создания поста);
   2. Чёрный список (id записи, id пользователя, id пользователя занесенного в чс, дата занесения в чс);
   3. Посты в сообществе (id поста в сообществе, id создателя поста, id сообщества, дата поста).
   Реализовать не смог (не разобрался со связями между таблицами).
   Скрипт попытки прилагаю.
