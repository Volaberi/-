CREATE TABLE `user_info` (
	`ui_num`	PK, not null, AI	NOT NULL,
	`ui_name`	not null	NULL,
	`ui_id`	not null, unique	NULL,
	`ui_pwd`	not null	NULL,
	`ui_birth`	not null	NULL,
	`ui_phone`	not null	NULL,
	`ui_email`	not null	NULL,
	`ui_credat`	not null	NULL,
	`ui_address`	not null	NULL,
	`ui_file_path`	VARCHAR(255)	NULL
);

CREATE TABLE `review_board_info` (
	`rbi_num`	PK, not null, AI	NOT NULL,
	`ui_num`	PK, not null, AI	NOT NULL,
	`la_num`	PK, not null, AI	NOT NULL,
	`rbi_title`	not null	NULL,
	`rbi_content`	not null	NULL,
	`rbi_file_path`	VARCHAR(255)	NULL,
	`rbi_credat`	not null	NULL,
	`rbi_cnt`	VARCHAR(255)	NULL
);

CREATE TABLE `laun_goods` (
	`lg_num`	PK, not null, AI	NOT NULL,
	`la_num`	PK, not null, AI	NOT NULL,
	`lg_type`	not null	NULL,
	`lg_price`	not null	NULL
);

CREATE TABLE `laun_cart` (
	`lc_num`	PK, not null, AI	NOT NULL,
	`lg_num`	PK, not null, AI	NOT NULL,
	`ui_num`	PK, not null, AI	NOT NULL,
	`la_num`	PK, not null, AI	NOT NULL,
	`lc_quantity`	not null	NULL
);

CREATE TABLE `question_board_info` (
	`qbi_num`	PK, not null, AI	NOT NULL,
	`ui_num`	PK, not null, AI	NOT NULL,
	`la_num`	PK, not null, AI	NOT NULL,
	`qbi_title`	not null	NULL,
	`qbi_content`	not null	NULL,
	`qbi_file_path`	VARCHAR(255)	NULL,
	`qbi_credat`	not null	NULL,
	`qbi_cnt`	VARCHAR(255)	NULL
);

CREATE TABLE `laun_payment` (
	`lp_num`	PK, not null, AI	NOT NULL,
	`lc_num`	PK, not null, AI	NOT NULL,
	`lg_num`	PK, not null, AI	NOT NULL,
	`ui_num`	PK, not null, AI	NOT NULL,
	`la_num`	PK, not null, AI	NOT NULL
);

CREATE TABLE `laun_admin` (
	`la_num`	PK, not null, AI	NOT NULL,
	`la_id`	not null, unique	NULL,
	`la_pwd`	not null	NULL,
	`la_phone`	not null	NULL,
	`la_email`	not null	NULL
);

ALTER TABLE `user_info` ADD CONSTRAINT `PK_USER_INFO` PRIMARY KEY (
	`ui_num`
);

ALTER TABLE `review_board_info` ADD CONSTRAINT `PK_REVIEW_BOARD_INFO` PRIMARY KEY (
	`rbi_num`,
	`ui_num`,
	`la_num`
);

ALTER TABLE `laun_goods` ADD CONSTRAINT `PK_LAUN_GOODS` PRIMARY KEY (
	`lg_num`,
	`la_num`
);

ALTER TABLE `laun_cart` ADD CONSTRAINT `PK_LAUN_CART` PRIMARY KEY (
	`lc_num`,
	`lg_num`,
	`ui_num`,
	`la_num`
);

ALTER TABLE `question_board_info` ADD CONSTRAINT `PK_QUESTION_BOARD_INFO` PRIMARY KEY (
	`qbi_num`,
	`ui_num`,
	`la_num`
);

ALTER TABLE `laun_payment` ADD CONSTRAINT `PK_LAUN_PAYMENT` PRIMARY KEY (
	`lp_num`,
	`lc_num`,
	`lg_num`,
	`ui_num`,
	`la_num`
);

ALTER TABLE `laun_admin` ADD CONSTRAINT `PK_LAUN_ADMIN` PRIMARY KEY (
	`la_num`
);

ALTER TABLE `review_board_info` ADD CONSTRAINT `FK_user_info_TO_review_board_info_1` FOREIGN KEY (
	`ui_num`
)
REFERENCES `user_info` (
	`ui_num`
);

ALTER TABLE `review_board_info` ADD CONSTRAINT `FK_laun_admin_TO_review_board_info_1` FOREIGN KEY (
	`la_num`
)
REFERENCES `laun_admin` (
	`la_num`
);

ALTER TABLE `laun_goods` ADD CONSTRAINT `FK_laun_admin_TO_laun_goods_1` FOREIGN KEY (
	`la_num`
)
REFERENCES `laun_admin` (
	`la_num`
);

ALTER TABLE `laun_cart` ADD CONSTRAINT `FK_laun_goods_TO_laun_cart_1` FOREIGN KEY (
	`lg_num`
)
REFERENCES `laun_goods` (
	`lg_num`
);

ALTER TABLE `laun_cart` ADD CONSTRAINT `FK_laun_goods_TO_laun_cart_2` FOREIGN KEY (
	`la_num`
)
REFERENCES `laun_goods` (
	`la_num`
);

ALTER TABLE `laun_cart` ADD CONSTRAINT `FK_user_info_TO_laun_cart_1` FOREIGN KEY (
	`ui_num`
)
REFERENCES `user_info` (
	`ui_num`
);

ALTER TABLE `question_board_info` ADD CONSTRAINT `FK_user_info_TO_question_board_info_1` FOREIGN KEY (
	`ui_num`
)
REFERENCES `user_info` (
	`ui_num`
);

ALTER TABLE `question_board_info` ADD CONSTRAINT `FK_laun_admin_TO_question_board_info_1` FOREIGN KEY (
	`la_num`
)
REFERENCES `laun_admin` (
	`la_num`
);

ALTER TABLE `laun_payment` ADD CONSTRAINT `FK_laun_cart_TO_laun_payment_1` FOREIGN KEY (
	`lc_num`
)
REFERENCES `laun_cart` (
	`lc_num`
);

ALTER TABLE `laun_payment` ADD CONSTRAINT `FK_laun_cart_TO_laun_payment_2` FOREIGN KEY (
	`lg_num`
)
REFERENCES `laun_cart` (
	`lg_num`
);

ALTER TABLE `laun_payment` ADD CONSTRAINT `FK_laun_cart_TO_laun_payment_3` FOREIGN KEY (
	`ui_num`
)
REFERENCES `laun_cart` (
	`ui_num`
);

ALTER TABLE `laun_payment` ADD CONSTRAINT `FK_laun_cart_TO_laun_payment_4` FOREIGN KEY (
	`la_num`
)
REFERENCES `laun_cart` (
	`la_num`
);

