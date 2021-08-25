DROP DATABASE IF EXISTS store;
CREATE DATABASE store;
USE store;

CREATE TABLE IF NOT EXISTS catalogs(
	id SERIAL PRIMARY KEY,
	name VARCHAR(256) NOT NULL UNIQUE COMMENT 'Название раздела',
	
	INDEX idx_catalog_name(name)
	
) COMMENT 'Разделы магазина';

CREATE TABLE IF NOT EXISTS products(
	id SERIAL PRIMARY KEY,
	catalog_id BIGINT UNSIGNED,
	name VARCHAR(256) UNIQUE COMMENT 'Название товара',
	description TEXT COMMENT 'Описание товара',
	price DECIMAL (8, 2) COMMENT 'Цена',
	picture_id BIGINT UNSIGNED COMMENT 'Фото товара',
	
	INDEX idx_product_name(name),
	FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
	
) COMMENT 'Товары';

CREATE TABLE IF NOT EXISTS users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) COMMENT 'Имя',
	phone BIGINT UNSIGNED NOT NULL UNIQUE COMMENT 'Телефон',
	email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail'
) COMMENT 'Покупатели';

CREATE TABLE IF NOT EXISTS profiles(
	user_id SERIAL PRIMARY KEY,
	gender ENUM('M', 'F') COMMENT 'Пол',
	day_of_birth DATE COMMENT 'Дата рождения',
	country VARCHAR(256) COMMENT 'Страна',
	city VARCHAR(256) COMMENT 'Город',
	street VARCHAR(256) COMMENT 'Улица',
	house INT COMMENT 'Дом',
	apartment INT COMMENT 'Квартира',
	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
	
	FOREIGN KEY (user_id) REFERENCES users(id)
	
) COMMENT 'Профили покупателей';

CREATE TABLE IF NOT EXISTS orders(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
	
	INDEX idx_order_of_user(user_id),
	FOREIGN KEY (user_id) REFERENCES users(id)
	
) COMMENT 'Заказы';

CREATE TABLE IF NOT EXISTS orders_products(
	id SERIAL PRIMARY KEY,
	order_id BIGINT UNSIGNED,
	product_id BIGINT UNSIGNED,
	total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных позиций',
	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
	
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(id)
	
) COMMENT 'Состав заказа';

CREATE TABLE IF NOT EXISTS storages(
	id SERIAL PRIMARY KEY,
	name VARCHAR(256) COMMENT 'Название склада',
	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
	
	INDEX idx_storage_name(name)
	
) COMMENT 'Склады';

CREATE TABLE IF NOT EXISTS storages_products(
	id SERIAL PRIMARY KEY,
	storage_id BIGINT UNSIGNED NOT NULL,
	product_id BIGINT UNSIGNED NOT NULL UNIQUE,
	total INT UNSIGNED COMMENT 'Количество товарной позиции на складе',
	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
	
	FOREIGN KEY (product_id) REFERENCES products(id),
	FOREIGN KEY (storage_id) REFERENCES storages(id)
	
) COMMENT 'Товары на складе';

CREATE TABLE IF NOT EXISTS discounts(
	id SERIAL PRIMARY KEY,
  	user_id BIGINT UNSIGNED,
  	product_id BIGINT UNSIGNED,
  	catalog_id BIGINT UNSIGNED,
  	storage_product_id BIGINT UNSIGNED,
  	discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  	started_at DATETIME COMMENT 'Дата начала скидки',
  	finished_at DATETIME COMMENT 'Дата окончания скидки',
  	created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
  	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT 'Дата обновления',
  	
  	FOREIGN KEY (user_id) REFERENCES users(id),
  	FOREIGN KEY (product_id) REFERENCES products(id),
  	FOREIGN KEY (catalog_id) REFERENCES catalogs(id),
  	FOREIGN KEY (storage_product_id) REFERENCES storages_products(id)
  	
) COMMENT 'Скидки';

CREATE TABLE IF NOT EXISTS pictures(
	id SERIAL,
	product_id BIGINT UNSIGNED,
  	body TEXT COMMENT 'Описание изображения',
    filename VARCHAR(255) COMMENT 'Название изображения',   	
    size INT COMMENT 'Размер изображения',
    created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
    updated_at DATETIME ON UPDATE NOW() COMMENT 'Дата обновления', 
    
    FOREIGN KEY (product_id) REFERENCES products(id)
    
) COMMENT 'Изображения';