/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.1.13-MariaDB : Database - baobab0612
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baobab0612` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `baobab0612`;

/*Table structure for table `g5_auth` */

DROP TABLE IF EXISTS `g5_auth`;

CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_auth` */

/*Table structure for table `g5_autosave` */

DROP TABLE IF EXISTS `g5_autosave`;

CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `g5_autosave` */

/*Table structure for table `g5_banner_table` */

DROP TABLE IF EXISTS `g5_banner_table`;

CREATE TABLE `g5_banner_table` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `g5_banner_table` */

insert  into `g5_banner_table`(`nw_id`,`nw_device`,`nw_subject`,`nw_content`,`nw_content_html`) values 
(1,'both','ㅁㅁㄴ','<p>ㅁㄴㅁㄴ<img src=\"https://baobab0612.cafe24.com/data/editor/2110/aae39569f6229bf48b921105023cdf26_1633508156_2043.jpg\" title=\"aae39569f6229bf48b921105023cdf26_1633508156_2043.jpg\" alt=\"aae39569f6229bf48b921105023cdf26_1633508156_2043.jpg\">&nbsp;</p>',0);

/*Table structure for table `g5_board` */

DROP TABLE IF EXISTS `g5_board`;

CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_select_editor` varchar(50) NOT NULL DEFAULT '',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_board` */

insert  into `g5_board`(`bo_table`,`gr_id`,`bo_subject`,`bo_mobile_subject`,`bo_device`,`bo_admin`,`bo_list_level`,`bo_read_level`,`bo_write_level`,`bo_reply_level`,`bo_comment_level`,`bo_upload_level`,`bo_download_level`,`bo_html_level`,`bo_link_level`,`bo_count_delete`,`bo_count_modify`,`bo_read_point`,`bo_write_point`,`bo_comment_point`,`bo_download_point`,`bo_use_category`,`bo_category_list`,`bo_use_sideview`,`bo_use_file_content`,`bo_use_secret`,`bo_use_dhtml_editor`,`bo_select_editor`,`bo_use_rss_view`,`bo_use_good`,`bo_use_nogood`,`bo_use_name`,`bo_use_signature`,`bo_use_ip_view`,`bo_use_list_view`,`bo_use_list_file`,`bo_use_list_content`,`bo_table_width`,`bo_subject_len`,`bo_mobile_subject_len`,`bo_page_rows`,`bo_mobile_page_rows`,`bo_new`,`bo_hot`,`bo_image_width`,`bo_skin`,`bo_mobile_skin`,`bo_include_head`,`bo_include_tail`,`bo_content_head`,`bo_mobile_content_head`,`bo_content_tail`,`bo_mobile_content_tail`,`bo_insert_content`,`bo_gallery_cols`,`bo_gallery_width`,`bo_gallery_height`,`bo_mobile_gallery_width`,`bo_mobile_gallery_height`,`bo_upload_size`,`bo_reply_order`,`bo_use_search`,`bo_order`,`bo_count_write`,`bo_count_comment`,`bo_write_min`,`bo_write_max`,`bo_comment_min`,`bo_comment_max`,`bo_notice`,`bo_upload_count`,`bo_use_email`,`bo_use_cert`,`bo_use_sns`,`bo_use_captcha`,`bo_sort_field`,`bo_1_subj`,`bo_2_subj`,`bo_3_subj`,`bo_4_subj`,`bo_5_subj`,`bo_6_subj`,`bo_7_subj`,`bo_8_subj`,`bo_9_subj`,`bo_10_subj`,`bo_1`,`bo_2`,`bo_3`,`bo_4`,`bo_5`,`bo_6`,`bo_7`,`bo_8`,`bo_9`,`bo_10`) values 
('notice','community','공지사항','','both','',1,1,1,1,1,1,1,1,1,1,1,-1,5,1,-20,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/basic_responsive_new','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),
('qa','community','질문답변','','both','',1,1,1,1,1,1,1,1,1,1,1,-1,5,1,-20,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'basic','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),
('free','community','자유게시판','','both','',1,1,1,1,1,1,1,1,1,1,1,-1,5,1,-20,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/basic_responsive_new','theme/basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),
('gallery','community','갤러리','','both','',1,1,1,1,1,1,1,1,1,1,1,-1,5,1,-20,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'gallery','gallery','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),
('main_banner','community','배너 관리','배너 관리','both','',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,600,'theme/gallery_responsive','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,1,0,5,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','','');

/*Table structure for table `g5_board_file` */

DROP TABLE IF EXISTS `g5_board_file`;

CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_board_file` */

insert  into `g5_board_file`(`bo_table`,`wr_id`,`bf_no`,`bf_source`,`bf_file`,`bf_download`,`bf_content`,`bf_fileurl`,`bf_thumburl`,`bf_storage`,`bf_filesize`,`bf_width`,`bf_height`,`bf_type`,`bf_datetime`) values 
('main_banner',9,0,'KakaoTalk_20211008_120440518_01.jpg','1889943138_Y3kf50oT_b9d110cfac5f8ff375dd8dc3540c88e4cc2949ed.jpg',0,'','','','',597471,1280,960,2,'2021-10-12 14:03:23'),
('main_banner',6,0,'KakaoTalk_20211008_120440518_03.jpg','1889943138_ynxDUC9u_b67ed949996534ea08cdde04866d998aaa6c7d71.jpg',0,'','','','',393403,1280,1280,2,'2021-10-08 13:39:33'),
('main_banner',5,0,'KakaoTalk_20211008_120440518_04.jpg','1889943138_iNyZHu5B_077af7dd981f3a5dc71e0e43348133776441f6b9.jpg',0,'','','','',618771,1280,1280,2,'2021-10-08 13:39:23'),
('main_banner',4,0,'KakaoTalk_20211008_120440518_05.jpg','1889943138_H1cXhKqv_859a017d107f592cff798698f524754679360305.jpg',0,'','','','',547239,1280,1280,2,'2021-10-08 13:39:07'),
('main_banner',7,0,'KakaoTalk_20211008_120440518_02.jpg','1889943138_0o1fVCwQ_1dbfd26e4f42031a977f9ff9f43698e97e5c3241.jpg',0,'','','','',362993,1280,1280,2,'2021-10-08 13:39:42');

/*Table structure for table `g5_board_good` */

DROP TABLE IF EXISTS `g5_board_good`;

CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_board_good` */

/*Table structure for table `g5_board_new` */

DROP TABLE IF EXISTS `g5_board_new`;

CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `g5_board_new` */

insert  into `g5_board_new`(`bn_id`,`bo_table`,`wr_id`,`wr_parent`,`bn_datetime`,`mb_id`) values 
(10,'main_banner',6,6,'2021-10-08 13:39:33','admin'),
(9,'main_banner',5,5,'2021-10-08 13:39:23','admin'),
(8,'main_banner',4,4,'2021-10-08 13:39:07','admin'),
(11,'main_banner',7,7,'2021-10-08 13:39:42','admin'),
(13,'main_banner',9,9,'2021-10-12 14:03:23','admin');

/*Table structure for table `g5_cert_history` */

DROP TABLE IF EXISTS `g5_cert_history`;

CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_cert_history` */

/*Table structure for table `g5_config` */

DROP TABLE IF EXISTS `g5_config`;

CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT '0',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_token_key` varchar(100) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_config` */

insert  into `g5_config`(`cf_title`,`cf_theme`,`cf_admin`,`cf_admin_email`,`cf_admin_email_name`,`cf_add_script`,`cf_use_point`,`cf_point_term`,`cf_use_copy_log`,`cf_use_email_certify`,`cf_login_point`,`cf_cut_name`,`cf_nick_modify`,`cf_new_skin`,`cf_new_rows`,`cf_search_skin`,`cf_connect_skin`,`cf_faq_skin`,`cf_read_point`,`cf_write_point`,`cf_comment_point`,`cf_download_point`,`cf_write_pages`,`cf_mobile_pages`,`cf_link_target`,`cf_bbs_rewrite`,`cf_delay_sec`,`cf_filter`,`cf_possible_ip`,`cf_intercept_ip`,`cf_analytics`,`cf_add_meta`,`cf_syndi_token`,`cf_syndi_except`,`cf_member_skin`,`cf_use_homepage`,`cf_req_homepage`,`cf_use_tel`,`cf_req_tel`,`cf_use_hp`,`cf_req_hp`,`cf_use_addr`,`cf_req_addr`,`cf_use_signature`,`cf_req_signature`,`cf_use_profile`,`cf_req_profile`,`cf_register_level`,`cf_register_point`,`cf_icon_level`,`cf_use_recommend`,`cf_recommend_point`,`cf_leave_day`,`cf_search_part`,`cf_email_use`,`cf_email_wr_super_admin`,`cf_email_wr_group_admin`,`cf_email_wr_board_admin`,`cf_email_wr_write`,`cf_email_wr_comment_all`,`cf_email_mb_super_admin`,`cf_email_mb_member`,`cf_email_po_super_admin`,`cf_prohibit_id`,`cf_prohibit_email`,`cf_new_del`,`cf_memo_del`,`cf_visit_del`,`cf_popular_del`,`cf_optimize_date`,`cf_use_member_icon`,`cf_member_icon_size`,`cf_member_icon_width`,`cf_member_icon_height`,`cf_member_img_size`,`cf_member_img_width`,`cf_member_img_height`,`cf_login_minutes`,`cf_image_extension`,`cf_flash_extension`,`cf_movie_extension`,`cf_formmail_is_member`,`cf_page_rows`,`cf_mobile_page_rows`,`cf_visit`,`cf_max_po_id`,`cf_stipulation`,`cf_privacy`,`cf_open_modify`,`cf_memo_send_point`,`cf_mobile_new_skin`,`cf_mobile_search_skin`,`cf_mobile_connect_skin`,`cf_mobile_faq_skin`,`cf_mobile_member_skin`,`cf_captcha_mp3`,`cf_editor`,`cf_cert_use`,`cf_cert_ipin`,`cf_cert_hp`,`cf_cert_kcb_cd`,`cf_cert_kcp_cd`,`cf_lg_mid`,`cf_lg_mert_key`,`cf_cert_limit`,`cf_cert_req`,`cf_sms_use`,`cf_sms_type`,`cf_icode_id`,`cf_icode_pw`,`cf_icode_server_ip`,`cf_icode_server_port`,`cf_icode_token_key`,`cf_googl_shorturl_apikey`,`cf_social_login_use`,`cf_social_servicelist`,`cf_payco_clientid`,`cf_payco_secret`,`cf_facebook_appid`,`cf_facebook_secret`,`cf_twitter_key`,`cf_twitter_secret`,`cf_google_clientid`,`cf_google_secret`,`cf_naver_clientid`,`cf_naver_secret`,`cf_kakao_rest_key`,`cf_kakao_client_secret`,`cf_kakao_js_apikey`,`cf_captcha`,`cf_recaptcha_site_key`,`cf_recaptcha_secret_key`,`cf_1_subj`,`cf_2_subj`,`cf_3_subj`,`cf_4_subj`,`cf_5_subj`,`cf_6_subj`,`cf_7_subj`,`cf_8_subj`,`cf_9_subj`,`cf_10_subj`,`cf_1`,`cf_2`,`cf_3`,`cf_4`,`cf_5`,`cf_6`,`cf_7`,`cf_8`,`cf_9`,`cf_10`) values 
('그누보드5','theme_wide_16','admin','admin@domain.com','그누보드5','',1,0,1,0,100,15,60,'basic',15,'basic','basic','basic',0,0,0,0,10,5,'_blank',0,30,'18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ','','','','','','','basic',0,0,0,0,0,0,0,0,0,0,0,0,2,1000,2,0,0,30,10000,1,0,0,0,0,0,0,0,0,'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객','',30,180,180,180,'2021-10-12',2,5000,22,22,50000,60,60,10,'gif|jpg|jpeg|png','swf','asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3',1,15,15,'오늘:1,어제:0,최대:3,전체:16',0,'해당 홈페이지에 맞는 회원가입약관을 입력합니다.','해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.',0,500,'basic','basic','basic','basic','basic','basic','smarteditor2',0,'','','','','','',2,0,'','','','','','','','',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');

/*Table structure for table `g5_content` */

DROP TABLE IF EXISTS `g5_content`;

CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL,
  PRIMARY KEY (`co_id`),
  KEY `co_seo_title` (`co_seo_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_content` */

insert  into `g5_content`(`co_id`,`co_html`,`co_subject`,`co_content`,`co_seo_title`,`co_mobile_content`,`co_skin`,`co_mobile_skin`,`co_tag_filter_use`,`co_hit`,`co_include_head`,`co_include_tail`) values 
('company',1,'회사소개','<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>','회사소개','','','',0,0,'',''),
('privacy',1,'개인정보 처리방침','<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>','개인정보-처리방침','','','',0,0,'',''),
('provision',1,'서비스 이용약관','<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>','서비스-이용약관','','','',0,0,'','');

/*Table structure for table `g5_faq` */

DROP TABLE IF EXISTS `g5_faq`;

CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_faq` */

/*Table structure for table `g5_faq_master` */

DROP TABLE IF EXISTS `g5_faq_master`;

CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `g5_faq_master` */

insert  into `g5_faq_master`(`fm_id`,`fm_subject`,`fm_head_html`,`fm_tail_html`,`fm_mobile_head_html`,`fm_mobile_tail_html`,`fm_order`) values 
(1,'자주하시는 질문','','','','',0);

/*Table structure for table `g5_group` */

DROP TABLE IF EXISTS `g5_group`;

CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_group` */

insert  into `g5_group`(`gr_id`,`gr_subject`,`gr_device`,`gr_admin`,`gr_use_access`,`gr_order`,`gr_1_subj`,`gr_2_subj`,`gr_3_subj`,`gr_4_subj`,`gr_5_subj`,`gr_6_subj`,`gr_7_subj`,`gr_8_subj`,`gr_9_subj`,`gr_10_subj`,`gr_1`,`gr_2`,`gr_3`,`gr_4`,`gr_5`,`gr_6`,`gr_7`,`gr_8`,`gr_9`,`gr_10`) values 
('community','커뮤니티','both','',0,0,'','','','','','','','','','','','','','','','','','','','');

/*Table structure for table `g5_group_member` */

DROP TABLE IF EXISTS `g5_group_member`;

CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_group_member` */

/*Table structure for table `g5_login` */

DROP TABLE IF EXISTS `g5_login`;

CREATE TABLE `g5_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_login` */

insert  into `g5_login`(`lo_ip`,`mb_id`,`lo_datetime`,`lo_location`,`lo_url`) values 
('121.152.188.190','','2022-02-09 14:46:00','그누보드5','/');

/*Table structure for table `g5_mail` */

DROP TABLE IF EXISTS `g5_mail`;

CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_mail` */

/*Table structure for table `g5_member` */

DROP TABLE IF EXISTS `g5_member`;

CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_password2` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT '0',
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT '0',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `g5_member` */

insert  into `g5_member`(`mb_no`,`mb_id`,`mb_password`,`mb_password2`,`mb_name`,`mb_nick`,`mb_nick_date`,`mb_email`,`mb_homepage`,`mb_level`,`mb_sex`,`mb_birth`,`mb_tel`,`mb_hp`,`mb_certify`,`mb_adult`,`mb_dupinfo`,`mb_zip1`,`mb_zip2`,`mb_addr1`,`mb_addr2`,`mb_addr3`,`mb_addr_jibeon`,`mb_signature`,`mb_recommend`,`mb_point`,`mb_today_login`,`mb_login_ip`,`mb_datetime`,`mb_ip`,`mb_leave_date`,`mb_intercept_date`,`mb_email_certify`,`mb_email_certify2`,`mb_memo`,`mb_lost_certify`,`mb_mailling`,`mb_sms`,`mb_open`,`mb_open_date`,`mb_profile`,`mb_memo_call`,`mb_memo_cnt`,`mb_scrap_cnt`,`mb_1`,`mb_2`,`mb_3`,`mb_4`,`mb_5`,`mb_6`,`mb_7`,`mb_8`,`mb_9`,`mb_10`) values 
(1,'admin','sha256:12000:MOWjAxwq9N6K2NWliD3b+Pbd6AfBsE0a:e0mnfMPUE00Hjh2KRK5RjGCCbIwx5Uln','*7FC7FC68D03DB1FEB42733C15CE71B09F11E6AF6','최고관리자','최고관리자','2021-02-17','admin@domain.com','',10,'','','','','',0,'','','','','','','','','',600,'2021-10-12 14:02:47','112.166.62.98','2021-02-17 14:11:11','1.209.128.223','','','2021-02-17 14:11:11','','','',1,0,1,'0000-00-00','','',0,0,'','','','','','','','','','');

/*Table structure for table `g5_member_social_profiles` */

DROP TABLE IF EXISTS `g5_member_social_profiles`;

CREATE TABLE `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `mp_no` (`mp_no`),
  KEY `mb_id` (`mb_id`),
  KEY `provider` (`provider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_member_social_profiles` */

/*Table structure for table `g5_memo` */

DROP TABLE IF EXISTS `g5_memo`;

CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT '0',
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_memo` */

/*Table structure for table `g5_menu` */

DROP TABLE IF EXISTS `g5_menu`;

CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `g5_menu` */

insert  into `g5_menu`(`me_id`,`me_code`,`me_name`,`me_link`,`me_target`,`me_order`,`me_use`,`me_mobile_use`) values 
(23,'10','게시판','https://baobab0612.cafe24.com/bbs/board.php?bo_table=notice','self',0,1,1),
(24,'1010','공지사항','https://baobab0612.cafe24.com/bbs/board.php?bo_table=notice','self',0,1,1),
(25,'1020','자유게시판','https://baobab0612.cafe24.com/bbs/board.php?bo_table=free','self',0,1,1),
(26,'20','관 리','https://baobab0612.cafe24.com/bbs/board.php?bo_table=main_banner','self',0,1,1),
(27,'2010','배너 관리','https://baobab0612.cafe24.com/bbs/board.php?bo_table=main_banner','self',0,1,1);

/*Table structure for table `g5_new_win` */

DROP TABLE IF EXISTS `g5_new_win`;

CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `g5_new_win` */

/*Table structure for table `g5_point` */

DROP TABLE IF EXISTS `g5_point`;

CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `g5_point` */

insert  into `g5_point`(`po_id`,`mb_id`,`po_datetime`,`po_content`,`po_point`,`po_use_point`,`po_expired`,`po_expire_date`,`po_mb_point`,`po_rel_table`,`po_rel_id`,`po_rel_action`) values 
(1,'admin','2021-02-17 14:11:25','2021-02-17 첫로그인',100,0,0,'9999-12-31',100,'@login','admin','2021-02-17'),
(2,'admin','2021-10-06 11:49:11','2021-10-06 첫로그인',100,0,0,'9999-12-31',200,'@login','admin','2021-10-06'),
(7,'admin','2021-10-12 14:02:47','2021-10-12 첫로그인',100,0,0,'9999-12-31',600,'@login','admin','2021-10-12'),
(4,'admin','2021-10-07 09:23:26','2021-10-07 첫로그인',100,0,0,'9999-12-31',300,'@login','admin','2021-10-07'),
(5,'admin','2021-10-08 13:37:16','2021-10-08 첫로그인',100,0,0,'9999-12-31',400,'@login','admin','2021-10-08'),
(6,'admin','2021-10-09 23:39:40','2021-10-09 첫로그인',100,0,0,'9999-12-31',500,'@login','admin','2021-10-09');

/*Table structure for table `g5_poll` */

DROP TABLE IF EXISTS `g5_poll`;

CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_poll` */

/*Table structure for table `g5_poll_etc` */

DROP TABLE IF EXISTS `g5_poll_etc`;

CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_poll_etc` */

/*Table structure for table `g5_popular` */

DROP TABLE IF EXISTS `g5_popular`;

CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_popular` */

/*Table structure for table `g5_qa_config` */

DROP TABLE IF EXISTS `g5_qa_config`;

CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_qa_config` */

insert  into `g5_qa_config`(`qa_title`,`qa_category`,`qa_skin`,`qa_mobile_skin`,`qa_use_email`,`qa_req_email`,`qa_use_hp`,`qa_req_hp`,`qa_use_sms`,`qa_send_number`,`qa_admin_hp`,`qa_admin_email`,`qa_use_editor`,`qa_subject_len`,`qa_mobile_subject_len`,`qa_page_rows`,`qa_mobile_page_rows`,`qa_image_width`,`qa_upload_size`,`qa_insert_content`,`qa_include_head`,`qa_include_tail`,`qa_content_head`,`qa_content_tail`,`qa_mobile_content_head`,`qa_mobile_content_tail`,`qa_1_subj`,`qa_2_subj`,`qa_3_subj`,`qa_4_subj`,`qa_5_subj`,`qa_1`,`qa_2`,`qa_3`,`qa_4`,`qa_5`) values 
('1:1문의','회원|포인트','basic','basic',1,0,1,0,0,'0','','',1,60,30,15,15,600,1048576,'','','','','','','','','','','','','','','','','');

/*Table structure for table `g5_qa_content` */

DROP TABLE IF EXISTS `g5_qa_content`;

CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_qa_content` */

/*Table structure for table `g5_scrap` */

DROP TABLE IF EXISTS `g5_scrap`;

CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_scrap` */

/*Table structure for table `g5_uniqid` */

DROP TABLE IF EXISTS `g5_uniqid`;

CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_uniqid` */

insert  into `g5_uniqid`(`uq_id`,`uq_ip`) values 
(2021100613213302,'112.166.62.98'),
(2021100613215943,'112.166.62.98'),
(2021100613253610,'112.166.62.98'),
(2021100613584827,'112.166.62.98'),
(2021100614344024,'112.166.62.98'),
(2021100614475169,'112.166.62.98'),
(2021100614480102,'112.166.62.98'),
(2021100615014009,'112.166.62.98'),
(2021100617524836,'112.166.62.98'),
(2021100617524859,'112.166.62.98'),
(2021100709233156,'112.166.62.98'),
(2021100709233174,'112.166.62.98'),
(2021100709281166,'112.166.62.98'),
(2021100709281183,'112.166.62.98'),
(2021100813373562,'112.166.62.98'),
(2021100813373579,'112.166.62.98'),
(2021100813374360,'112.166.62.98'),
(2021100813374370,'112.166.62.98'),
(2021100813391507,'112.166.62.98'),
(2021100813391516,'112.166.62.98'),
(2021100813392553,'112.166.62.98'),
(2021100813392562,'112.166.62.98'),
(2021100813393562,'112.166.62.98'),
(2021100813393571,'112.166.62.98'),
(2021100813394470,'112.166.62.98'),
(2021100813394487,'112.166.62.98'),
(2021101214031309,'112.166.62.98'),
(2021101214031326,'112.166.62.98'),
(2021101214035376,'112.166.62.98');

/*Table structure for table `g5_visit` */

DROP TABLE IF EXISTS `g5_visit`;

CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_visit` */

insert  into `g5_visit`(`vi_id`,`vi_ip`,`vi_date`,`vi_time`,`vi_referer`,`vi_agent`,`vi_browser`,`vi_os`,`vi_device`) values 
(2,'112.166.62.98','2021-10-06','11:45:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36','','',''),
(3,'112.166.62.98','2021-10-08','12:03:56','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','','',''),
(4,'112.153.177.170','2021-10-09','23:31:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','','',''),
(5,'220.64.100.6','2021-10-09','23:40:01','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),
(6,'182.228.169.207','2021-10-09','23:40:10','','Mozilla/5.0 (Linux; Android 11; SM-G977N Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36;KAKAOTALK 2309520','','',''),
(7,'211.176.125.70','2021-10-12','00:40:50','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),
(8,'112.166.62.98','2021-10-12','13:58:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36','','',''),
(9,'112.166.62.98','2021-10-14','18:37:07','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','','',''),
(10,'112.166.62.98','2021-10-18','09:04:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','','',''),
(11,'112.166.62.98','2021-10-21','17:20:05','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','','',''),
(12,'112.166.62.98','2021-10-22','17:31:40','http://127.0.0.1:8023/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','','',''),
(13,'220.64.106.1','2021-10-22','18:02:00','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),
(14,'106.101.129.67','2021-10-22','18:02:09','','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 KAKAOTALK 9.5.1','','',''),
(15,'220.64.105.250','2021-10-24','19:36:23','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),
(16,'121.152.188.190','2022-02-09','14:45:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','','','');

/*Table structure for table `g5_visit_sum` */

DROP TABLE IF EXISTS `g5_visit_sum`;

CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_visit_sum` */

insert  into `g5_visit_sum`(`vs_date`,`vs_count`) values 
('2021-02-17',1),
('2021-10-06',1),
('2021-10-08',1),
('2021-10-09',3),
('2021-10-12',2),
('2021-10-14',1),
('2021-10-18',1),
('2021-10-21',1),
('2021-10-22',3),
('2021-10-24',1),
('2022-02-09',1);

/*Table structure for table `g5_write_free` */

DROP TABLE IF EXISTS `g5_write_free`;

CREATE TABLE `g5_write_free` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `g5_write_free` */

/*Table structure for table `g5_write_gallery` */

DROP TABLE IF EXISTS `g5_write_gallery`;

CREATE TABLE `g5_write_gallery` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_write_gallery` */

/*Table structure for table `g5_write_main_banner` */

DROP TABLE IF EXISTS `g5_write_main_banner`;

CREATE TABLE `g5_write_main_banner` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `g5_write_main_banner` */

insert  into `g5_write_main_banner`(`wr_id`,`wr_num`,`wr_reply`,`wr_parent`,`wr_is_comment`,`wr_comment`,`wr_comment_reply`,`ca_name`,`wr_option`,`wr_subject`,`wr_content`,`wr_seo_title`,`wr_link1`,`wr_link2`,`wr_link1_hit`,`wr_link2_hit`,`wr_hit`,`wr_good`,`wr_nogood`,`mb_id`,`wr_password`,`wr_name`,`wr_email`,`wr_homepage`,`wr_datetime`,`wr_file`,`wr_last`,`wr_ip`,`wr_facebook_user`,`wr_twitter_user`,`wr_1`,`wr_2`,`wr_3`,`wr_4`,`wr_5`,`wr_6`,`wr_7`,`wr_8`,`wr_9`,`wr_10`) values 
(4,-1,'',4,0,0,'','','','4대강 종주1','4대강 종주1','4대강-종주1','','',0,0,1,0,0,'admin','','최고관리자','admin@domain.com','','2021-10-08 13:39:07',1,'2021-10-08 13:39:07','112.166.62.98','','','','','','','','','','','',''),
(5,-2,'',5,0,0,'','','','4대강 종주2','4대강 종주2','4대강-종주2','','',0,0,1,0,0,'admin','','최고관리자','admin@domain.com','','2021-10-08 13:39:23',1,'2021-10-08 13:39:23','112.166.62.98','','','','','','','','','','','',''),
(6,-3,'',6,0,0,'','','','4대강 종주3','4대강 종주3','4대강-종주3','','',0,0,2,0,0,'admin','','최고관리자','admin@domain.com','','2021-10-08 13:39:33',1,'2021-10-08 13:39:33','112.166.62.98','','','','','','','','','','','',''),
(7,-4,'',7,0,0,'','','','4대강 종주4','4대강 종주4','4대강-종주4','','',0,0,2,0,0,'admin','','최고관리자','admin@domain.com','','2021-10-08 13:39:42',1,'2021-10-08 13:39:42','112.166.62.98','','','','','','','','','','','',''),
(9,-5,'',9,0,0,'','','','yj','jty','yj','','',0,0,1,0,0,'admin','','최고관리자','admin@domain.com','','2021-10-12 14:03:23',1,'2021-10-12 14:03:23','112.166.62.98','','','','','','','','','','','','');

/*Table structure for table `g5_write_notice` */

DROP TABLE IF EXISTS `g5_write_notice`;

CREATE TABLE `g5_write_notice` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_write_notice` */

/*Table structure for table `g5_write_qa` */

DROP TABLE IF EXISTS `g5_write_qa`;

CREATE TABLE `g5_write_qa` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `g5_write_qa` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
