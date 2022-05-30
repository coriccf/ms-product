-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-05-29 14:48:27.735

-- tables
-- Table: client
CREATE TABLE client (
                        id_client int NOT NULL AUTO_INCREMENT,
                        nombre varchar(50) NOT NULL,
                        apellido varchar(50) NOT NULL,
                        telefono int NOT NULL,
                        CONSTRAINT client_pk PRIMARY KEY (id_client)
);

-- Table: product
CREATE TABLE product (
                         id_product int NOT NULL AUTO_INCREMENT,
                         name_product varchar(59) NOT NULL,
                         price int NOT NULL,
                         description varchar(200) NOT NULL,
                         CONSTRAINT product_pk PRIMARY KEY (id_product)
);

-- Table: sale
CREATE TABLE sale (
                      id_sale int NOT NULL AUTO_INCREMENT,
                      id_product int NOT NULL,
                      id_client int NOT NULL,
                      date int NOT NULL,
                      CONSTRAINT sale_pk PRIMARY KEY (id_sale)
);

-- foreign keys
-- Reference: sale_client (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_client FOREIGN KEY sale_client (id_client)
    REFERENCES client (id_client);

-- Reference: sale_product (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_product FOREIGN KEY sale_product (id_product)
    REFERENCES product (id_product);

-- End of file.