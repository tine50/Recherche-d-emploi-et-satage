-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 29 juil. 2021 à 10:26
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `emploistage`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prenom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau_etude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

DROP TABLE IF EXISTS `entreprises`;
CREATE TABLE IF NOT EXISTS `entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sous_titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_contrats_id` bigint(20) UNSIGNED NOT NULL,
  `secteur_activite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_entreprises_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entreprises_type_contrats_id_foreign` (`type_contrats_id`),
  KEY `entreprises_type_entreprises_id_foreign` (`type_entreprises_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `titre`, `sous_titre`, `corps`, `slug`, `type_contrats_id`, `secteur_activite`, `type_entreprises_id`, `created_at`, `updated_at`) VALUES
(23, 'Logement 2', 'logement de sdnsdl', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\"><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\">Lorem Ipsum</span></strong><span style=\"margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff; vertical-align: inherit;\"><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\">&nbsp;est simplement un texte factice de l\'industrie de l\'impression et de la composition.&nbsp;</span><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\">Lorem Ipsum est le texte factice standard de l\'industrie depuis les ann&eacute;es 1500, lorsqu\'un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l\'a brouill&eacute; pour en faire un livre sp&eacute;cimen de caract&egrave;res.&nbsp;</span><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\">Il a surv&eacute;cu non seulement &agrave; cinq si&egrave;cles, mais aussi au saut dans la composition &eacute;lectronique, restant essentiellement inchang&eacute;.&nbsp;</span><span style=\"margin: 0px; padding: 0px; vertical-align: inherit;\">Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 avec la sortie des feuilles Letraset contenant des passages de Lorem Ipsum, et plus r&eacute;cemment avec des logiciels de PAO comme Aldus PageMaker incluant des versions de Lorem Ipsum.</span></span></p>', 'logement-2', 1, 'logement1', 1, '2021-07-29 09:49:26', '2021-07-29 09:49:26'),
(4, 'Iure accusamus recusandae nemo.', 'Voluptatem distinctio perferendis est itaque nesciunt est fugit.', 'Molestiae est voluptate consequatur ea qui assumenda recusandae. Molestiae dolores odit nulla ad quibusdam dolorem. Quaerat ipsa ut velit voluptatibus facilis cum architecto distinctio. Quia ipsa eligendi iste veritatis facere mollitia vero. Nihil accusantium et aut magnam commodi non aut. Veniam nobis deleniti molestiae quam eligendi molestiae. Eum asperiores aut ducimus quaerat rerum. Ipsam iste aliquam aut temporibus odit veritatis et. Sed ut nobis quibusdam ut. Doloribus et expedita odit quia neque. Qui harum quis libero quo facilis placeat expedita. Quam voluptatem voluptas voluptate occaecati quia quos harum. Qui sint quasi sit natus maiores molestias doloribus nesciunt. Velit voluptate molestiae et error. Vitae similique sint veniam qui cumque. Qui sint sed quidem. Aut reprehenderit saepe quibusdam repellat iste corporis.', 'iure-accusamus-recusandae-nemo', 2, 'Modi voluptas.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(5, 'Repellendus culpa officiis excepturi.', 'Autem ex officiis aut nostrum illum aut est facilis distinctio.', 'Voluptas aut quaerat aliquam vel. Veniam repudiandae doloremque voluptatem quas qui. Beatae dolorem voluptates quod in. Cum et praesentium sequi mollitia. Natus quibusdam non fugiat quo eum provident numquam nihil. Accusamus consequatur dolores aperiam doloribus fugit minus minima perferendis. Cupiditate sed corrupti deleniti quibusdam. Et aut ut nihil quis excepturi id. Quia corrupti enim alias voluptate tempora voluptatem quibusdam architecto. Quas illo consequuntur rerum voluptas non impedit ex. Animi adipisci doloribus quibusdam molestiae. Ipsa cum tempore distinctio illo. In voluptas at et est cupiditate. Error eveniet ad sit cupiditate. Nobis qui sed fugiat modi. Perferendis non distinctio nemo repudiandae dignissimos. Rerum libero quia natus quo ea eos eos.', 'repellendus-culpa-officiis-excepturi', 2, 'Enim exercitationem.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(6, 'Et reprehenderit maxime saepe veritatis.', 'Dolores laborum voluptatem qui qui aut dolorem fuga asperiores accusamus magnam.', 'Sapiente est et illo sequi. Quo totam dignissimos aliquam sed architecto asperiores. Alias quibusdam eos voluptatem aut qui omnis at. Debitis nulla qui architecto odio dignissimos. Mollitia mollitia rerum non autem excepturi. Nemo consequatur similique dolor. Voluptatem debitis doloribus quisquam eius. Quam tempora quis possimus eum nulla consequuntur odio. Vel aliquam exercitationem rerum sint fugiat architecto. Magnam sit ipsum consequuntur dolore sint facere. Quis iusto libero explicabo dolorem esse velit voluptas. Quasi at officia qui. Suscipit ex ut aut ducimus laborum. Consequatur magni harum repellat animi et aut expedita. Veniam qui vel rem unde odio omnis id. Ducimus harum adipisci distinctio sit et sunt alias porro. Omnis vel modi ut dolorem amet nihil molestias. Reiciendis excepturi vel quia. Vel ullam in tempora enim eum. Aut est autem rerum dolorem alias.', 'et-reprehenderit-maxime-saepe-veritatis', 1, 'Qui.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(7, 'Repellendus fuga dicta aut vitae.', 'Repellat beatae amet ut id veniam impedit illum est voluptas aut.', 'Facere magni velit commodi et quas. Saepe quis fugit nihil hic at voluptas ipsa. Voluptas et laborum qui et sequi. Voluptatem et totam laboriosam fugit eum. Et illo et eaque suscipit. Dolor nulla earum facere distinctio enim ullam explicabo laudantium. Ipsa sapiente et nam optio. Adipisci provident rerum quis. Consequuntur voluptatem ad amet esse necessitatibus. Enim iure cum odio. Voluptatem ducimus aliquid amet excepturi. Autem necessitatibus at quia est soluta sint. Ea tempore ducimus eos eos quisquam maiores fugit. Molestias eos labore repellendus mollitia. Magnam repellendus aliquam vero sequi quod voluptas quis. Est fugiat iste incidunt autem. Totam ad soluta consectetur tenetur nisi nostrum. Nihil repudiandae odio consequuntur sapiente fugiat harum iste. Accusantium sapiente ratione eius officia. Recusandae qui asperiores ut laudantium. Ipsam voluptatem velit reiciendis est.', 'repellendus-fuga-dicta-aut-vitae', 1, 'Aut doloremque.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(8, 'Repudiandae similique sed sequi.', 'Voluptate molestiae nisi et sed suscipit odit.', 'Tempore delectus ipsum beatae a est voluptate quia sunt. Et corrupti veritatis dolorum odit maiores. Iusto eligendi et a saepe ratione temporibus voluptates ad. Natus dolores qui distinctio iure corporis. Sunt nihil adipisci veritatis sunt. Vel maiores aut quam placeat sequi atque. Asperiores rerum alias fugiat nobis. Provident eos aut commodi rerum a iste odio. Facere a enim distinctio vel iusto. Omnis totam odio rerum fuga quia dolorum sint veniam. Consectetur est nobis alias maiores voluptates. Ut nam cupiditate sapiente ipsum inventore incidunt. Reprehenderit voluptas officiis itaque facere officiis et corrupti. Autem perferendis beatae repudiandae officia rerum. Cupiditate eos impedit et voluptatum consequatur aut. Voluptates minus fugiat sint sit. Voluptate ullam ducimus qui adipisci nihil inventore. Fuga eos sunt deleniti architecto.', 'repudiandae-similique-sed-sequi', 1, 'Qui.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(9, 'Cupiditate sint ut molestias dignissimos.', 'Et eos voluptatem aperiam hic iste at dicta facere.', 'Ipsum et unde odit unde omnis beatae. Provident ab dolores dolorum officiis error ab. Vel nobis rem aut officiis. Nisi voluptates assumenda iure similique voluptatibus praesentium quaerat. Laborum dolor accusantium quis error provident. Modi dolore assumenda voluptatum consequuntur nostrum quibusdam. Ut facilis occaecati culpa laboriosam delectus. Omnis perferendis delectus quia molestias. Vero voluptatibus dolores nemo dolores nostrum est. Qui repellendus est repellat et. Nihil doloribus ipsum porro reprehenderit sunt reiciendis. Esse itaque nihil labore vero sed quia culpa. Nisi ducimus cupiditate dicta rem hic voluptatem laborum. Quas cum dicta corrupti sapiente. Eos aperiam quo aliquid excepturi labore. Cumque tempore dolores et et vel sunt nostrum corporis.', 'cupiditate-sint-ut-molestias-dignissimos', 1, 'Dolores sed.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(10, 'Sunt voluptate qui sed.', 'Voluptas quisquam eligendi veritatis et totam porro eligendi vel et ex.', 'Ut ab odit rerum et possimus totam. Rem rerum corrupti voluptas nulla omnis debitis. Ut commodi exercitationem quidem vitae rerum. Eaque repellendus ut totam corrupti. Vel et quis laborum ratione. Aut cumque ab qui. Est nobis porro omnis eligendi. Provident dolorum delectus nihil incidunt et rem eligendi. Numquam voluptas dolorum veniam sed. Quis repellat quas perspiciatis sed provident sunt repellendus. Nostrum adipisci temporibus libero et iusto eum et voluptates. Consequuntur veniam voluptas harum nostrum officiis saepe libero aut. Est ut expedita eligendi ipsam voluptatem et dicta. Rerum accusantium sit repellat accusamus facere. Voluptatibus explicabo reiciendis soluta. Quaerat libero dolores facere ipsum sunt. Eum repudiandae earum facilis accusantium necessitatibus. Ipsum doloremque eos nam et omnis eius dolor. Temporibus cumque necessitatibus hic dolor impedit sit et.', 'sunt-voluptate-qui-sed', 2, 'Modi ex.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(11, 'Id fugit.', 'Quia debitis totam veniam commodi animi inventore possimus hic minima saepe ut.', 'Quisquam voluptas placeat consequatur nam est mollitia aut quod. Doloremque rerum et deserunt quidem aut. Omnis voluptatem repudiandae dolores deleniti suscipit ea. Est eveniet molestiae aut. Consequatur excepturi veniam dicta repudiandae hic. Et dolorem ex est et id at. Doloremque quidem rerum modi sint esse et. In nemo deleniti tenetur excepturi culpa totam doloremque. Voluptas corrupti et molestiae deleniti aut et. In facere repellendus odio quasi dolorem aperiam labore. Autem vel sapiente nobis. Cupiditate nostrum occaecati odit nesciunt dolore. Incidunt impedit est doloremque facere ea minus praesentium. Rerum ex eos inventore sit aut ipsam accusantium assumenda. Repellat expedita enim nostrum placeat distinctio. Et est qui repudiandae aut.', 'id-fugit', 1, 'Ab qui.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(12, 'Repudiandae repudiandae magnam.', 'Ut velit similique veniam dolores dolore minima.', 'Qui ut nulla et ut. Debitis blanditiis eos est quam minus sequi. Itaque autem suscipit nihil. Exercitationem quas ut ut quam. Est id eveniet esse neque minima officia beatae quisquam. Nulla aliquam repellendus dicta deserunt. Numquam est nulla repellendus et fuga ipsam voluptates eos. Praesentium ab enim aut incidunt dolorum qui. Molestiae deserunt perspiciatis quo rerum quia et id. Odio quam veniam eum esse accusantium voluptatum. Et est dolorem rerum. Est cum magnam ut necessitatibus soluta perspiciatis beatae. Laudantium vitae eum voluptatem. Alias maxime quibusdam et esse sint. Et accusamus soluta facilis in deleniti nihil. Sed expedita quidem voluptate fugiat quisquam eveniet in. Ullam aut ea voluptas sed optio ullam voluptas. Vero architecto dolorem excepturi vero quia ut maxime quisquam. Consequatur in modi iusto. Cumque quasi ad veniam consectetur quas ipsum quo.', 'repudiandae-repudiandae-magnam', 2, 'Rerum.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(13, 'Quod qui quas.', 'Fugiat fuga dolores est nam ea ratione itaque et cum.', 'Consequatur dolores ipsa velit mollitia dolorum. Sed et cum praesentium quia non. Ipsa natus est dolor accusamus molestiae. In autem possimus illum consectetur. Aut laudantium officia nihil voluptatem non beatae. Occaecati sed voluptatem neque vel in deleniti omnis. Vel iure qui consequatur accusantium. Ab repellat quod nisi et. Quod hic itaque ex. Ipsum repudiandae consequatur et voluptatem laborum iusto. Voluptates id praesentium qui fugiat. Voluptatem explicabo perferendis velit ea ullam voluptas quis. Qui alias itaque est. Vitae sed qui ullam id itaque fugit aperiam. Aut sapiente sequi eos illo occaecati. Molestiae consequatur cum quia. Et ullam nihil voluptatem doloremque. Enim nihil dolores debitis maxime assumenda rerum dolor. Eos rem corporis quia aliquam. Perspiciatis fugiat sit iste sapiente. Reiciendis et et aliquam et et.', 'quod-qui-quas', 2, 'Voluptatem.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(14, 'Exercitationem expedita consequatur labore.', 'Magnam esse in corrupti voluptatem et quidem ratione doloremque ut fuga.', 'Est aut tempora voluptatem eligendi occaecati. Eum voluptatem molestiae nihil excepturi vero architecto sunt. Doloremque labore voluptatibus tenetur quibusdam quam. Dolor ipsam dolor voluptas harum qui. Enim quibusdam illum excepturi. Eligendi ex sed nihil quia accusamus excepturi enim. Sunt similique doloribus aliquam ut commodi repellat. Odio non asperiores fugit enim reprehenderit aut. Ipsa sapiente cum nostrum. Dolorem omnis sapiente sed laboriosam minima aut dignissimos. Repellendus totam corporis sed amet aperiam. Dolores dignissimos eveniet ad est. Quo ea est ab. Neque commodi non neque. Modi modi delectus soluta tenetur itaque sapiente aut. Fugit earum ut architecto quaerat. In placeat eius fuga amet tempora quia similique dolores. Ut deserunt alias aperiam et.', 'exercitationem-expedita-consequatur-labore', 1, 'Delectus necessitatibus.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(15, 'Saepe asperiores incidunt.', 'Tempora rem nihil sit dolorem laboriosam recusandae.', 'Reprehenderit et eius deleniti nihil. Illo facilis provident consequatur unde aliquam id quod dolor. Fuga eveniet quia delectus rerum saepe. Aut id esse omnis at. Dolorem sit sunt odio eligendi ipsam praesentium. Aut rem consequatur vitae eos. Corrupti et hic est velit possimus consequatur aut. Rerum rerum labore ea hic doloribus et quis. Ea deleniti assumenda rem et in non perspiciatis. Suscipit doloribus dolore voluptates laudantium sint. Quia sequi reprehenderit cupiditate ipsam sed inventore at. Minus quos maiores facere quisquam voluptatem quasi. Beatae cumque quod fuga. Dolores quasi consectetur omnis quam voluptatem nihil sint. Aliquid enim hic voluptas modi dolorem. Rem ratione eveniet necessitatibus laboriosam ullam saepe. Similique odit nostrum eveniet voluptas sed porro quia.', 'saepe-asperiores-incidunt', 1, 'Dignissimos omnis.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(16, 'Dolore nisi.', 'Quisquam laboriosam tenetur excepturi eveniet blanditiis atque autem at eaque occaecati.', 'Aut ipsam unde et. Ut molestiae commodi sint totam. Incidunt ducimus ab consectetur exercitationem aut omnis eum. Veniam quia aut error fuga et. Nisi porro praesentium magni et molestiae dolores. Numquam magni autem ut rerum. Atque est voluptatibus repudiandae doloremque aut consectetur rerum. Illum magnam inventore quia dolores ipsum. Est adipisci laboriosam voluptas sit iste. Qui dolore quas dignissimos velit. Accusantium itaque illo qui unde mollitia aut. Doloribus et temporibus quisquam ratione dolore. Voluptatem corrupti accusamus earum et omnis. Dolores dolor at accusamus et. Veritatis molestiae amet harum. Dolor beatae at dolorem repellat numquam. Iure est natus provident sed. Assumenda sed quam et aut. Ea quis maiores ab rerum praesentium. Aut adipisci ut quos non. Dicta sequi consequuntur fugiat non. Incidunt quam quisquam quis expedita sit dignissimos repudiandae velit.', 'dolore-nisi', 2, 'Officia.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(17, 'Quibusdam voluptates saepe.', 'Magnam earum vel neque autem debitis dolore omnis accusantium aliquam quam.', 'Ea quae excepturi non. Incidunt blanditiis id illum nesciunt optio. Aut eligendi architecto nesciunt accusamus aspernatur et. Sequi quasi ratione fugiat sapiente in voluptas earum. Quia ut inventore dolorem ut dicta id ab. Omnis quia delectus cum dignissimos eaque omnis. Et dolor error esse reprehenderit temporibus. Rerum debitis facilis nulla mollitia. Ratione saepe saepe occaecati ipsam aut. Nihil beatae rerum quasi dolor est ut sint. Assumenda voluptatibus natus quia. Hic dolorem debitis expedita a explicabo beatae. Sed praesentium magnam incidunt quasi. Sequi similique odio sit praesentium atque modi. Et hic facilis ut reprehenderit placeat dicta doloribus. Maiores modi nisi assumenda ut cupiditate dolorem unde voluptatem. Praesentium nihil rem corporis. Quisquam blanditiis velit necessitatibus. Odit maxime harum id nobis voluptas dolorum ipsam.', 'quibusdam-voluptates-saepe', 2, 'Autem.', 2, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(18, 'Architecto aliquam sequi.', 'Occaecati enim ut reprehenderit et ut voluptatem ea.', 'Nihil asperiores cupiditate odio. Velit ut voluptates culpa et quo voluptas fuga. At quia culpa fugiat asperiores fugiat fuga. Quo perferendis exercitationem aliquam pariatur accusantium molestias. Animi porro ad explicabo quia numquam. Et omnis nobis quaerat reprehenderit ea aliquid. Est dicta dolor facere aut. Rerum et nihil dolorum qui et. Molestiae iste deleniti explicabo quas officiis aut eligendi. Architecto enim cumque dignissimos aut non impedit. Facere deserunt aliquid impedit nihil. Sequi accusantium illo aut enim. Non voluptatibus ut provident excepturi reprehenderit. Maiores ab alias cumque architecto enim. Sunt earum facere praesentium magni fuga deserunt. Sed et qui debitis magni. Ullam enim vel illum. Nulla accusantium aut voluptatem. Ea eum temporibus earum impedit. Natus ab harum voluptatibus id est quae quo. Ut libero adipisci aut tempora quis voluptatum.', 'architecto-aliquam-sequi', 2, 'Esse magnam.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(19, 'Ipsum rem impedit.', 'Ea eos blanditiis molestiae ea tenetur esse minus.', 'Aliquid voluptatem sit hic ut reiciendis. Harum libero odit id nihil. Reprehenderit reprehenderit tempore minima porro voluptas omnis. Maxime et amet vero ut qui expedita suscipit. Fugit earum sit sed velit qui voluptas minima. Vitae at eligendi necessitatibus sed. Veritatis rerum quo commodi impedit id. Provident repellat et delectus assumenda rerum ipsum aut. Voluptatibus et veritatis quas voluptatibus magni non. Beatae ipsam laboriosam velit qui. Enim maxime quia fugiat enim quo rerum omnis est. Eaque et aut nihil deleniti laboriosam. Beatae iusto inventore qui quia assumenda. Doloribus in ullam asperiores sit rerum veritatis quidem. Rerum est doloremque reprehenderit hic impedit. Cum dolorem possimus natus debitis deleniti saepe. Enim laboriosam neque reprehenderit quod magni. Nam eaque ut quo laudantium atque blanditiis.', 'ipsum-rem-impedit', 2, 'Tempore fugiat.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(20, 'Omnis ducimus consectetur itaque.', 'Debitis optio alias vitae laborum dolores possimus quia et.', 'Quo corporis distinctio id ipsum. Doloribus earum corrupti ut nostrum veniam rerum. Velit voluptatem quia dicta facere. Ad vel voluptate officiis. Nemo debitis ea nobis omnis. Tempora occaecati aut quod sed reiciendis et non. Ea qui dolore doloribus tenetur sunt ab. Ducimus modi distinctio sit et blanditiis voluptatem. Praesentium expedita est occaecati modi. Molestias illo consequatur officiis omnis quasi. Perspiciatis dolorem voluptate animi aut et impedit fuga quidem. Autem sit ut ipsa nihil. Maxime commodi ipsa ut. Vitae rem provident quidem aut eaque praesentium aut. Aperiam excepturi quod doloremque qui eligendi aut qui. Id quisquam eaque quis assumenda sunt rem ut. Cupiditate nam iste ut corporis. Odio voluptatem est aliquid cum. Sunt in et sunt et. Numquam odit reprehenderit nihil non enim earum veniam et.', 'omnis-ducimus-consectetur-itaque', 2, 'Rerum eum.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37'),
(21, 'Quod eos hic.', 'Consequuntur id sed suscipit dolorem est quo reiciendis totam.', 'Amet dolores quidem eum modi. Vero architecto amet aut ex impedit repellat ea. Impedit voluptatum aut architecto sit odio. Ipsa voluptas ut voluptates odit autem aut. Mollitia est et eveniet aspernatur. Recusandae amet excepturi quod doloremque magnam. Ipsam excepturi qui tempora. Rerum ut ea perspiciatis sit nihil quos tenetur. Fugiat officia ut ipsam cumque et deserunt magnam. Harum aliquam voluptatum numquam sit et at. Recusandae amet deleniti dolorum sequi. Perspiciatis nobis magnam aperiam voluptatem non. Omnis provident voluptas in laudantium laudantium quasi. Maxime quas ipsa optio blanditiis omnis. Alias quas consectetur inventore repellat itaque optio ea. Dolor nihil dignissimos praesentium consequatur. Aliquid reiciendis voluptate nisi rerum vero ab. Porro ut distinctio eum dolorum sed deserunt.', 'quod-eos-hic', 1, 'Exercitationem rerum.', 1, '2021-07-23 17:45:37', '2021-07-23 17:45:37');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(64, '2014_10_12_000000_create_users_table', 1),
(65, '2014_10_12_100000_create_password_resets_table', 1),
(66, '2019_08_19_000000_create_failed_jobs_table', 1),
(67, '2020_07_22_012635_create_type_contrats_table', 1),
(68, '2021_07_10_233020_create_clients_table', 1),
(69, '2021_07_10_233109_create_entreprises_table', 1),
(70, '2021_07_11_003649_create_postulers_table', 1),
(71, '2021_07_22_020148_create_type_entreprises_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `postulers`
--

DROP TABLE IF EXISTS `postulers`;
CREATE TABLE IF NOT EXISTS `postulers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `entreprises_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postulers_users_id_foreign` (`users_id`),
  KEY `postulers_entreprises_id_foreign` (`entreprises_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postulers`
--

INSERT INTO `postulers` (`id`, `users_id`, `entreprises_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-07-23 18:38:41', '2021-07-23 18:38:41'),
(2, 1, 1, '2021-07-23 21:31:42', '2021-07-23 21:31:42'),
(3, 2, 6, '2021-07-23 22:41:56', '2021-07-23 22:41:56'),
(4, 2, 20, '2021-07-23 22:43:11', '2021-07-23 22:43:11'),
(5, 2, 4, '2021-07-23 22:44:18', '2021-07-23 22:44:18'),
(6, 2, 6, '2021-07-23 22:46:09', '2021-07-23 22:46:09'),
(7, 2, 3, '2021-07-23 22:49:14', '2021-07-23 22:49:14'),
(8, 2, 3, '2021-07-23 22:49:28', '2021-07-23 22:49:28'),
(9, 1, 4, '2021-07-24 19:05:31', '2021-07-24 19:05:31'),
(10, 2, 1, '2021-07-24 19:22:09', '2021-07-24 19:22:09'),
(11, 1, 3, '2021-07-24 23:41:29', '2021-07-24 23:41:29'),
(12, 3, 2, '2021-07-25 00:17:46', '2021-07-25 00:17:46'),
(13, 2, 10, '2021-07-28 14:55:30', '2021-07-28 14:55:30'),
(14, 2, 3, '2021-07-29 09:07:16', '2021-07-29 09:07:16'),
(15, 1, 3, '2021-07-29 09:09:27', '2021-07-29 09:09:27'),
(16, 2, 3, '2021-07-29 09:44:18', '2021-07-29 09:44:18'),
(17, 2, 3, '2021-07-29 09:44:36', '2021-07-29 09:44:36'),
(18, 2, 4, '2021-07-29 09:44:46', '2021-07-29 09:44:46');

-- --------------------------------------------------------

--
-- Structure de la table `type_contrats`
--

DROP TABLE IF EXISTS `type_contrats`;
CREATE TABLE IF NOT EXISTS `type_contrats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_type_contrat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_contrats`
--

INSERT INTO `type_contrats` (`id`, `nom_type_contrat`, `created_at`, `updated_at`) VALUES
(1, 'CDI', '2021-07-23 17:45:20', '2021-07-23 17:45:20'),
(2, 'stage', '2021-07-23 17:45:20', '2021-07-23 17:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `type_entreprises`
--

DROP TABLE IF EXISTS `type_entreprises`;
CREATE TABLE IF NOT EXISTS `type_entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_type_entreprise` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_entreprises`
--

INSERT INTO `type_entreprises` (`id`, `nom_type_entreprise`, `created_at`, `updated_at`) VALUES
(1, 'Entreprise', '2021-07-23 17:45:25', '2021-07-23 17:45:25'),
(2, 'Startup', '2021-07-23 17:45:25', '2021-07-23 17:45:25');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'ADMIN', NULL, '$2y$10$Gg3vjsv1MgW0qNCj7en/ReOLiQaVUjRz/kdrTL3wetkzF4jdsZR.a', NULL, '2021-07-23 17:45:30', '2021-07-23 17:45:30'),
(2, 'Abdoussalam', 'abdoussalamtine4@gmail.com', 'USER', NULL, '$2y$10$MvAOHMHU.1t2RmaGw1LxuuFmo32chaP.hQh8kxAxSdtQC3n816PRK', NULL, '2021-07-23 22:11:34', '2021-07-23 22:11:34'),
(3, 'riffo', 'riffo@gmail.com', 'USER', NULL, '$2y$10$iBkNDgUN5VmLWJL/DihVbeqJoJxnRFX8A/WX.itQc4dl4cMoAftVq', NULL, '2021-07-25 00:16:05', '2021-07-25 00:16:05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
