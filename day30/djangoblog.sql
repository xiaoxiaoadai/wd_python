/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 192.168.19.130:3306
 Source Schema         : djangoblog

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 20/03/2021 11:04:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts_bloguser
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser`;
CREATE TABLE `accounts_bloguser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser
-- ----------------------------
INSERT INTO `accounts_bloguser` VALUES (1, 'pbkdf2_sha256$216000$UXqOowy1gwMr$OrcyRoXfiBaKe8XU0CwHNRpsPLPJXclUZEbQ/UYZABs=', '2021-02-27 11:34:24.224956', 1, 'admin', '', '', '123@qq.com', 1, 1, '2020-09-21 12:26:50.988925', '', '2020-09-21 12:26:50.988925', '2020-09-21 12:26:50.988925', '');
INSERT INTO `accounts_bloguser` VALUES (2, 'test!q@w#eTYU', NULL, 0, '测试用户', '', '', 'test@test.com', 0, 1, '2020-09-21 12:27:28.919843', '', '2020-09-21 12:27:28.919843', '2020-09-21 12:27:28.919843', '');
INSERT INTO `accounts_bloguser` VALUES (3, 'pbkdf2_sha256$216000$iyjGQP3Ck9UF$66eNvNF+zsltDXPCiVOTl1Gk5EHOoXs2ZPnj8OhfTLg=', NULL, 0, 'luke', '', '', 'daxuelu@foxmail.com', 0, 0, '2020-09-21 12:31:34.338220', '', '2020-09-21 12:31:34.338220', '2020-09-21 12:31:34.338220', 'Register');

-- ----------------------------
-- Table structure for accounts_bloguser_groups
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_groups`;
CREATE TABLE `accounts_bloguser_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accounts_bloguser_groups_bloguser_id_group_id_fc37e89b_uniq`(`bloguser_id`, `group_id`) USING BTREE,
  INDEX `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_gr_bloguser_id_a16ccbb7_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for accounts_bloguser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_user_permissions`;
CREATE TABLE `accounts_bloguser_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accounts_bloguser_user_p_bloguser_id_permission_i_14808777_uniq`(`bloguser_id`, `permission_id`) USING BTREE,
  INDEX `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_us_bloguser_id_7e1b5742_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add site', 6, 'add_site');
INSERT INTO `auth_permission` VALUES (22, 'Can change site', 6, 'change_site');
INSERT INTO `auth_permission` VALUES (23, 'Can delete site', 6, 'delete_site');
INSERT INTO `auth_permission` VALUES (24, 'Can view site', 6, 'view_site');
INSERT INTO `auth_permission` VALUES (25, 'Can add 网站配置', 7, 'add_blogsettings');
INSERT INTO `auth_permission` VALUES (26, 'Can change 网站配置', 7, 'change_blogsettings');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 网站配置', 7, 'delete_blogsettings');
INSERT INTO `auth_permission` VALUES (28, 'Can view 网站配置', 7, 'view_blogsettings');
INSERT INTO `auth_permission` VALUES (29, 'Can add 友情链接', 8, 'add_links');
INSERT INTO `auth_permission` VALUES (30, 'Can change 友情链接', 8, 'change_links');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 友情链接', 8, 'delete_links');
INSERT INTO `auth_permission` VALUES (32, 'Can view 友情链接', 8, 'view_links');
INSERT INTO `auth_permission` VALUES (33, 'Can add 侧边栏', 9, 'add_sidebar');
INSERT INTO `auth_permission` VALUES (34, 'Can change 侧边栏', 9, 'change_sidebar');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 侧边栏', 9, 'delete_sidebar');
INSERT INTO `auth_permission` VALUES (36, 'Can view 侧边栏', 9, 'view_sidebar');
INSERT INTO `auth_permission` VALUES (37, 'Can add 标签', 10, 'add_tag');
INSERT INTO `auth_permission` VALUES (38, 'Can change 标签', 10, 'change_tag');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 标签', 10, 'delete_tag');
INSERT INTO `auth_permission` VALUES (40, 'Can view 标签', 10, 'view_tag');
INSERT INTO `auth_permission` VALUES (41, 'Can add 分类', 11, 'add_category');
INSERT INTO `auth_permission` VALUES (42, 'Can change 分类', 11, 'change_category');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 分类', 11, 'delete_category');
INSERT INTO `auth_permission` VALUES (44, 'Can view 分类', 11, 'view_category');
INSERT INTO `auth_permission` VALUES (45, 'Can add 文章', 12, 'add_article');
INSERT INTO `auth_permission` VALUES (46, 'Can change 文章', 12, 'change_article');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 文章', 12, 'delete_article');
INSERT INTO `auth_permission` VALUES (48, 'Can view 文章', 12, 'view_article');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户', 13, 'add_bloguser');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户', 13, 'change_bloguser');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户', 13, 'delete_bloguser');
INSERT INTO `auth_permission` VALUES (52, 'Can view 用户', 13, 'view_bloguser');
INSERT INTO `auth_permission` VALUES (53, 'Can add 评论', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change 评论', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 评论', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view 评论', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add oauth配置', 15, 'add_oauthconfig');
INSERT INTO `auth_permission` VALUES (58, 'Can change oauth配置', 15, 'change_oauthconfig');
INSERT INTO `auth_permission` VALUES (59, 'Can delete oauth配置', 15, 'delete_oauthconfig');
INSERT INTO `auth_permission` VALUES (60, 'Can view oauth配置', 15, 'view_oauthconfig');
INSERT INTO `auth_permission` VALUES (61, 'Can add oauth用户', 16, 'add_oauthuser');
INSERT INTO `auth_permission` VALUES (62, 'Can change oauth用户', 16, 'change_oauthuser');
INSERT INTO `auth_permission` VALUES (63, 'Can delete oauth用户', 16, 'delete_oauthuser');
INSERT INTO `auth_permission` VALUES (64, 'Can view oauth用户', 16, 'view_oauthuser');
INSERT INTO `auth_permission` VALUES (65, 'Can add 命令', 17, 'add_commands');
INSERT INTO `auth_permission` VALUES (66, 'Can change 命令', 17, 'change_commands');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 命令', 17, 'delete_commands');
INSERT INTO `auth_permission` VALUES (68, 'Can view 命令', 17, 'view_commands');
INSERT INTO `auth_permission` VALUES (69, 'Can add 邮件发送log', 18, 'add_emailsendlog');
INSERT INTO `auth_permission` VALUES (70, 'Can change 邮件发送log', 18, 'change_emailsendlog');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 邮件发送log', 18, 'delete_emailsendlog');
INSERT INTO `auth_permission` VALUES (72, 'Can view 邮件发送log', 18, 'view_emailsendlog');
INSERT INTO `auth_permission` VALUES (73, 'Can add OwnTrackLogs', 19, 'add_owntracklog');
INSERT INTO `auth_permission` VALUES (74, 'Can change OwnTrackLogs', 19, 'change_owntracklog');
INSERT INTO `auth_permission` VALUES (75, 'Can delete OwnTrackLogs', 19, 'delete_owntracklog');
INSERT INTO `auth_permission` VALUES (76, 'Can view OwnTrackLogs', 19, 'view_owntracklog');

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(0) UNSIGNED NOT NULL,
  `article_order` int(0) NOT NULL,
  `author_id` int(0) NOT NULL,
  `category_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE,
  INDEX `blog_article_author_id_905add38_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  INDEX `blog_article_category_id_7e38f15e_fk_blog_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `blog_article_author_id_905add38_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES (1, '2020-09-21 12:27:30.110872', '2020-09-21 12:27:30.110872', 'nice title 1', 'nice content 1', '2020-09-21 12:27:30.110872', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (2, '2020-09-21 12:27:32.207814', '2020-09-21 12:27:32.207814', 'nice title 2', 'nice content 2', '2020-09-21 12:27:32.207814', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (3, '2020-09-21 12:27:33.152788', '2020-09-21 12:27:33.152788', 'nice title 3', 'nice content 3', '2020-09-21 12:27:33.152788', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (4, '2020-09-21 12:27:34.019119', '2020-09-21 12:27:34.019119', 'nice title 4', 'nice content 4', '2020-09-21 12:27:34.019119', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (5, '2020-09-21 12:27:34.759316', '2020-09-21 12:27:34.759316', 'nice title 5', 'nice content 5', '2020-09-21 12:27:34.759316', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (6, '2020-09-21 12:27:35.509899', '2020-09-21 12:27:35.509899', 'nice title 6', 'nice content 6', '2020-09-21 12:27:35.509899', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (7, '2020-09-21 12:27:36.324007', '2020-09-21 12:27:36.324007', 'nice title 7', 'nice content 7', '2020-09-21 12:27:36.324007', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (8, '2020-09-21 12:27:37.113223', '2020-09-21 12:27:37.113223', 'nice title 8', 'nice content 8', '2020-09-21 12:27:37.113223', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (9, '2020-09-21 12:27:38.016217', '2020-09-21 12:27:38.016217', 'nice title 9', 'nice content 9', '2020-09-21 12:27:38.016217', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (10, '2020-09-21 12:27:38.761787', '2020-09-21 12:27:38.761787', 'nice title 10', 'nice content 10', '2020-09-21 12:27:38.761787', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (11, '2020-09-21 12:27:39.628864', '2020-09-21 12:27:39.628864', 'nice title 11', 'nice content 11', '2020-09-21 12:27:39.628864', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (12, '2020-09-21 12:27:40.534981', '2020-09-21 12:27:40.534981', 'nice title 12', 'nice content 12', '2020-09-21 12:27:40.534981', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (13, '2020-09-21 12:27:41.338356', '2020-09-21 12:27:41.338356', 'nice title 13', 'nice content 13', '2020-09-21 12:27:41.338356', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (14, '2020-09-21 12:27:42.212859', '2020-09-21 12:27:42.213854', 'nice title 14', 'nice content 14', '2020-09-21 12:27:42.213854', 'p', 'o', 'a', 1, 0, 2, 2);
INSERT INTO `blog_article` VALUES (15, '2020-09-21 12:27:43.016024', '2020-09-21 12:27:43.016024', 'nice title 15', 'nice content 15', '2020-09-21 12:27:43.016024', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (16, '2020-09-21 12:27:43.850183', '2020-09-21 12:27:43.850183', 'nice title 16', 'nice content 16', '2020-09-21 12:27:43.850183', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (17, '2020-09-21 12:27:44.780435', '2020-09-21 12:27:44.780435', 'nice title 17', 'nice content 17', '2020-09-21 12:27:44.781434', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (18, '2020-09-21 12:27:45.657221', '2020-09-21 12:27:45.657221', 'nice title 18', 'nice content 18', '2020-09-21 12:27:45.657221', 'p', 'o', 'a', 0, 0, 2, 2);
INSERT INTO `blog_article` VALUES (19, '2020-09-21 12:27:46.598695', '2020-09-21 12:27:46.598695', 'nice title 19', 'nice content 19', '2020-09-21 12:27:46.598695', 'p', 'o', 'a', 0, 0, 2, 2);

-- ----------------------------
-- Table structure for blog_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tags`;
CREATE TABLE `blog_article_tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `article_id` int(0) NOT NULL,
  `tag_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_article_tags_article_id_tag_id_b78a22e9_uniq`(`article_id`, `tag_id`) USING BTREE,
  INDEX `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_article_tags
-- ----------------------------
INSERT INTO `blog_article_tags` VALUES (2, 1, 1);
INSERT INTO `blog_article_tags` VALUES (1, 1, 2);
INSERT INTO `blog_article_tags` VALUES (4, 2, 1);
INSERT INTO `blog_article_tags` VALUES (3, 2, 3);
INSERT INTO `blog_article_tags` VALUES (6, 3, 1);
INSERT INTO `blog_article_tags` VALUES (5, 3, 4);
INSERT INTO `blog_article_tags` VALUES (8, 4, 1);
INSERT INTO `blog_article_tags` VALUES (7, 4, 5);
INSERT INTO `blog_article_tags` VALUES (10, 5, 1);
INSERT INTO `blog_article_tags` VALUES (9, 5, 6);
INSERT INTO `blog_article_tags` VALUES (12, 6, 1);
INSERT INTO `blog_article_tags` VALUES (11, 6, 7);
INSERT INTO `blog_article_tags` VALUES (14, 7, 1);
INSERT INTO `blog_article_tags` VALUES (13, 7, 8);
INSERT INTO `blog_article_tags` VALUES (16, 8, 1);
INSERT INTO `blog_article_tags` VALUES (15, 8, 9);
INSERT INTO `blog_article_tags` VALUES (18, 9, 1);
INSERT INTO `blog_article_tags` VALUES (17, 9, 10);
INSERT INTO `blog_article_tags` VALUES (20, 10, 1);
INSERT INTO `blog_article_tags` VALUES (19, 10, 11);
INSERT INTO `blog_article_tags` VALUES (22, 11, 1);
INSERT INTO `blog_article_tags` VALUES (21, 11, 12);
INSERT INTO `blog_article_tags` VALUES (24, 12, 1);
INSERT INTO `blog_article_tags` VALUES (23, 12, 13);
INSERT INTO `blog_article_tags` VALUES (26, 13, 1);
INSERT INTO `blog_article_tags` VALUES (25, 13, 14);
INSERT INTO `blog_article_tags` VALUES (28, 14, 1);
INSERT INTO `blog_article_tags` VALUES (27, 14, 15);
INSERT INTO `blog_article_tags` VALUES (30, 15, 1);
INSERT INTO `blog_article_tags` VALUES (29, 15, 16);
INSERT INTO `blog_article_tags` VALUES (32, 16, 1);
INSERT INTO `blog_article_tags` VALUES (31, 16, 17);
INSERT INTO `blog_article_tags` VALUES (34, 17, 1);
INSERT INTO `blog_article_tags` VALUES (33, 17, 18);
INSERT INTO `blog_article_tags` VALUES (36, 18, 1);
INSERT INTO `blog_article_tags` VALUES (35, 18, 19);
INSERT INTO `blog_article_tags` VALUES (38, 19, 1);
INSERT INTO `blog_article_tags` VALUES (37, 19, 20);

-- ----------------------------
-- Table structure for blog_blogsettings
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogsettings`;
CREATE TABLE `blog_blogsettings`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_sub_length` int(0) NOT NULL,
  `sidebar_article_count` int(0) NOT NULL,
  `sidebar_comment_count` int(0) NOT NULL,
  `show_google_adsense` tinyint(1) NOT NULL,
  `google_adsense_codes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `open_site_comment` tinyint(1) NOT NULL,
  `beiancode` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `analyticscode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_gongan_code` tinyint(1) NOT NULL,
  `gongan_beiancode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `resource_path` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogsettings
-- ----------------------------
INSERT INTO `blog_blogsettings` VALUES (1, 'DjangoBlog', '基于Django的博客系统', '基于Django的博客系统', 'Django,Python', 300, 10, 5, 0, '', 1, '', '', 0, '', '/var/www/resource/');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id`(`parent_category_id`) USING BTREE,
  INDEX `blog_category_slug_92643dc5`(`slug`) USING BTREE,
  CONSTRAINT `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `blog_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES (1, '2020-09-21 12:27:29.212682', '2020-09-21 12:27:29.212682', '我是父类目', 'wo-shi-fu-lei-mu', NULL);
INSERT INTO `blog_category` VALUES (2, '2020-09-21 12:27:29.475231', '2020-09-21 12:27:29.475231', '子类目', 'zi-lei-mu', 1);

-- ----------------------------
-- Table structure for blog_links
-- ----------------------------
DROP TABLE IF EXISTS `blog_links`;
CREATE TABLE `blog_links`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(0) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `show_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `sequence`(`sequence`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_links
-- ----------------------------

-- ----------------------------
-- Table structure for blog_sidebar
-- ----------------------------
DROP TABLE IF EXISTS `blog_sidebar`;
CREATE TABLE `blog_sidebar`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(0) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sequence`(`sequence`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_sidebar
-- ----------------------------

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `blog_tag_slug_01068d0e`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES (1, '2020-09-21 12:27:29.900988', '2020-09-21 12:27:29.900988', '标签', 'biao-qian');
INSERT INTO `blog_tag` VALUES (2, '2020-09-21 12:27:31.699091', '2020-09-21 12:27:31.699091', '标签1', 'biao-qian-1');
INSERT INTO `blog_tag` VALUES (3, '2020-09-21 12:27:32.578117', '2020-09-21 12:27:32.578117', '标签2', 'biao-qian-2');
INSERT INTO `blog_tag` VALUES (4, '2020-09-21 12:27:33.508410', '2020-09-21 12:27:33.508410', '标签3', 'biao-qian-3');
INSERT INTO `blog_tag` VALUES (5, '2020-09-21 12:27:34.267978', '2020-09-21 12:27:34.267978', '标签4', 'biao-qian-4');
INSERT INTO `blog_tag` VALUES (6, '2020-09-21 12:27:35.010174', '2020-09-21 12:27:35.010174', '标签5', 'biao-qian-5');
INSERT INTO `blog_tag` VALUES (7, '2020-09-21 12:27:35.847293', '2020-09-21 12:27:35.847293', '标签6', 'biao-qian-6');
INSERT INTO `blog_tag` VALUES (8, '2020-09-21 12:27:36.624839', '2020-09-21 12:27:36.624839', '标签7', 'biao-qian-7');
INSERT INTO `blog_tag` VALUES (9, '2020-09-21 12:27:37.389057', '2020-09-21 12:27:37.389057', '标签8', 'biao-qian-8');
INSERT INTO `blog_tag` VALUES (10, '2020-09-21 12:27:38.276065', '2020-09-21 12:27:38.276065', '标签9', 'biao-qian-9');
INSERT INTO `blog_tag` VALUES (11, '2020-09-21 12:27:39.089591', '2020-09-21 12:27:39.089591', '标签10', 'biao-qian-10');
INSERT INTO `blog_tag` VALUES (12, '2020-09-21 12:27:39.981579', '2020-09-21 12:27:39.981579', '标签11', 'biao-qian-11');
INSERT INTO `blog_tag` VALUES (13, '2020-09-21 12:27:40.798827', '2020-09-21 12:27:40.798827', '标签12', 'biao-qian-12');
INSERT INTO `blog_tag` VALUES (14, '2020-09-21 12:27:41.652174', '2020-09-21 12:27:41.652174', '标签13', 'biao-qian-13');
INSERT INTO `blog_tag` VALUES (15, '2020-09-21 12:27:42.481714', '2020-09-21 12:27:42.481714', '标签14', 'biao-qian-14');
INSERT INTO `blog_tag` VALUES (16, '2020-09-21 12:27:43.352813', '2020-09-21 12:27:43.352813', '标签15', 'biao-qian-15');
INSERT INTO `blog_tag` VALUES (17, '2020-09-21 12:27:44.129038', '2020-09-21 12:27:44.129038', '标签16', 'biao-qian-16');
INSERT INTO `blog_tag` VALUES (18, '2020-09-21 12:27:45.124939', '2020-09-21 12:27:45.124939', '标签17', 'biao-qian-17');
INSERT INTO `blog_tag` VALUES (19, '2020-09-21 12:27:46.031015', '2020-09-21 12:27:46.031015', '标签18', 'biao-qian-18');
INSERT INTO `blog_tag` VALUES (20, '2020-09-21 12:27:46.925213', '2020-09-21 12:27:46.925213', '标签19', 'biao-qian-19');

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `article_id` int(0) NOT NULL,
  `author_id` int(0) NOT NULL,
  `parent_comment_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_comment_article_id_94fe60a2_fk_blog_article_id`(`article_id`) USING BTREE,
  INDEX `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  INDEX `comments_comment_parent_comment_id_71289d4a_fk_comments_`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_comment_parent_comment_id_71289d4a_fk_comments_` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (13, 'accounts', 'bloguser');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (12, 'blog', 'article');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'blogsettings');
INSERT INTO `django_content_type` VALUES (11, 'blog', 'category');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'links');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'sidebar');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'tag');
INSERT INTO `django_content_type` VALUES (14, 'comments', 'comment');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'oauth', 'oauthconfig');
INSERT INTO `django_content_type` VALUES (16, 'oauth', 'oauthuser');
INSERT INTO `django_content_type` VALUES (19, 'owntracks', 'owntracklog');
INSERT INTO `django_content_type` VALUES (17, 'servermanager', 'commands');
INSERT INTO `django_content_type` VALUES (18, 'servermanager', 'emailsendlog');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'sites', 'site');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-09-21 12:26:08.590151');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-09-21 12:26:08.632142');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-09-21 12:26:08.672113');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-09-21 12:26:08.759075');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-09-21 12:26:08.765071');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-09-21 12:26:08.772066');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-09-21 12:26:08.779062');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-09-21 12:26:08.782060');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-09-21 12:26:08.789057');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-09-21 12:26:08.796052');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-09-21 12:26:08.804047');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-09-21 12:26:08.817040');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-09-21 12:26:08.826042');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2020-09-21 12:26:08.832032');
INSERT INTO `django_migrations` VALUES (15, 'accounts', '0001_initial', '2020-09-21 12:26:08.879005');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2020-09-21 12:26:08.977956');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2020-09-21 12:26:09.029930');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-21 12:26:09.039923');
INSERT INTO `django_migrations` VALUES (19, 'blog', '0001_initial', '2020-09-21 12:26:09.160861');
INSERT INTO `django_migrations` VALUES (20, 'comments', '0001_initial', '2020-09-21 12:26:09.332775');
INSERT INTO `django_migrations` VALUES (21, 'oauth', '0001_initial', '2020-09-21 12:26:09.439224');
INSERT INTO `django_migrations` VALUES (22, 'owntracks', '0001_initial', '2020-09-21 12:26:09.478201');
INSERT INTO `django_migrations` VALUES (23, 'servermanager', '0001_initial', '2020-09-21 12:26:09.508190');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2020-09-21 12:26:09.522183');
INSERT INTO `django_migrations` VALUES (25, 'sites', '0001_initial', '2020-09-21 12:26:09.542172');
INSERT INTO `django_migrations` VALUES (26, 'sites', '0002_alter_domain_unique', '2020-09-21 12:26:09.553166');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3d4fzs5boqvu5nxv8wioql6ji0tf4q5f', '.eJxVjLEKwjAUAP8ls5QkL0kbR8FRnJzLy8urLbYpNM0k_rtVFHS94-4uWixr35bMSztEsRdK7H5ZQLpxegkkmktac_Xm43wd0tdWxwmH8bxcNpNw4tMceTx8yr9dj7nfXsDoNFvAxpjQWcm2NmCil74DJo4NNZaVg04iga91rY0PoMiR01pqLx5P0Ao9Qg:1lFxrc:Kc8YPLUxc5poUZGtJBw-sM8tZEg_YPMpTF2dbqoDNkw', '2021-03-13 11:34:24.570750');
INSERT INTO `django_session` VALUES ('d5dp7ssx2t8jaok644t15a8l7o45ba02', '.eJxVjLEKwjAUAP8ls5QkL0kbR8FRnJzLy8urLbYpNM0k_rtVFHS94-4uWixr35bMSztEsRdK7H5ZQLpxegkkmktac_Xm43wd0tdWxwmH8bxcNpNw4tMceTx8yr9dj7nfXsDoNFvAxpjQWcm2NmCil74DJo4NNZaVg04iga91rY0PoMiR01pqLx5P0Ao9Qg:1kKLBP:i6gBSOqr2Vnw3_eX3FYj_pwhis2QUfjyUc7yQppnP4o', '2020-10-05 12:44:39.130863');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_site_domain_a2e37b91_uniq`(`domain`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');

-- ----------------------------
-- Table structure for oauth_oauthconfig
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthconfig`;
CREATE TABLE `oauth_oauthconfig`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appkey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appsecret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_oauthconfig
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_oauthuser
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthuser`;
CREATE TABLE `oauth_oauthuser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nikename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `picture` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `matedata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `author_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  CONSTRAINT `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_oauthuser
-- ----------------------------

-- ----------------------------
-- Table structure for owntracks_owntracklog
-- ----------------------------
DROP TABLE IF EXISTS `owntracks_owntracklog`;
CREATE TABLE `owntracks_owntracklog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owntracks_owntracklog
-- ----------------------------

-- ----------------------------
-- Table structure for servermanager_commands
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_commands`;
CREATE TABLE `servermanager_commands`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servermanager_commands
-- ----------------------------

-- ----------------------------
-- Table structure for servermanager_emailsendlog
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_emailsendlog`;
CREATE TABLE `servermanager_emailsendlog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `emailto` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_result` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servermanager_emailsendlog
-- ----------------------------
INSERT INTO `servermanager_emailsendlog` VALUES (1, 'daxuelu@foxmail.com', '验证您的电子邮箱', '\n                            <p>请点击下面链接验证您的邮箱</p>\n\n                            <a href=\"http://127.0.0.1:8000/account/result.html?type=validation&id=3&sign=45aa120ee2e6ff147e5e34a718aa0c78\" rel=\"bookmark\">http://127.0.0.1:8000/account/result.html?type=validation&id=3&sign=45aa120ee2e6ff147e5e34a718aa0c78</a>\n\n                            再次感谢您！\n                            <br />\n                            如果上面链接无法打开，请将此链接复制至浏览器。\n                            http://127.0.0.1:8000/account/result.html?type=validation&id=3&sign=45aa120ee2e6ff147e5e34a718aa0c78\n                            ', 0, '2020-09-21 12:31:35.331502');

SET FOREIGN_KEY_CHECKS = 1;
