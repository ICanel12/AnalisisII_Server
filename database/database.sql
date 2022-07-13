CREATE DATABASE connect_url;

CREATE TABLE user_url(
    id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    carnet VARCHAR(7)
);


INSERT INTO user_url (carnet)
VALUES ('1301019');


CREATE TABLE publication(
    id_publication INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(1000),
    description VARCHAR(255),
    date DATETIME,
    ubication VARCHAR(255)
);

INSERT INTO publication (title, image, description, date, ubication)
VALUES ('Pollo', 'https://www.ckmperu.com/wp-content/uploads/2018/06/pollos-engorde-00.jpg', 'prueba', '12-05-2020', 'Cayalá');

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ubication` varchar(255) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
);