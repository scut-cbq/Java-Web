CREATE TABLE `webdb`.`user`
(
    `username`  VARCHAR(12) NOT NULL,
    `password`  VARCHAR(30) NOT NULL,
    `email`     VARCHAR(30) NOT NULL,
    `telephone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`username`)
) ENGINE = InnoDB;
insert into webdb.user
values ("admin", "admin", "1269935910@qq.com", "15812420525");

CREATE TABLE `webdb`.`books`
(
    `id`          INT         NOT NULL,
    `name`        VARCHAR(50) NOT NULL,
    `price`       FLOAT       NOT NULL,
    `category`    VARCHAR(30) NOT NULL,
    `num`         INT         NOT NULL,
    `description` TEXT        NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
insert into webdb.books
values (1, "Java Web程序设计任务教程", 99.0, "计算机", 99, "Java Web"),
       (2, "新概念英语第三册", 78.0, "英语", 36, "新概念英语丛书"),
       (3, "舌尖上的中国", 150.0, "美食", 328, "记录舌尖上的中国"),
       (4, "你好，艺术", 55.0, "英语", 12, "带你走进艺术的殿堂");

CREATE TABLE `webdb`.`orders`
(
    `id`              INT         NOT NULL,
    `username`        VARCHAR(12) NOT NULL,
    `receiverName`    VARCHAR(12) NOT NULL,
    `receiverAddress` TEXT        NOT NULL,
    `receiverPhone`   VARCHAR(20) NOT NULL,
    `id_num`          TEXT        NOT NULL,
    `total`           FLOAT       NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;