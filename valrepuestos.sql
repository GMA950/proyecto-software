-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-11-2021 a las 14:37:13
-- Versión del servidor: 8.0.27-0ubuntu0.21.10.1
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `valrepuestos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_store`
--

CREATE TABLE `core_store` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(3, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}', 'object', NULL, NULL),
(6, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(7, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'model_def_plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(19, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', '', ''),
(20, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', '', ''),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', '', ''),
(22, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(23, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', '', ''),
(25, 'model_def_application::product.product', '{\"uid\":\"application::product.product\",\"collectionName\":\"products\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"code\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"name\":{\"type\":\"string\"},\"cat\":{\"type\":\"string\"},\"fab\":{\"type\":\"string\"},\"model\":{\"type\":\"string\"},\"ver\":{\"type\":\"string\"},\"year\":{\"type\":\"string\"},\"price\":{\"default\":0,\"type\":\"integer\"},\"critic\":{\"type\":\"integer\",\"default\":1},\"stock\":{\"type\":\"integer\",\"default\":0,\"required\":false},\"stockevents\":{\"via\":\"product\",\"collection\":\"stockevent\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::application::product.product', '{\"uid\":\"application::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":20,\"mainField\":\"code\",\"defaultSortBy\":\"code\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"ver\":{\"edit\":{\"label\":\"Ver\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ver\",\"searchable\":true,\"sortable\":true}},\"fab\":{\"edit\":{\"label\":\"Fab\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fab\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"model\":{\"edit\":{\"label\":\"Model\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Model\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"stockevents\":{\"edit\":{\"label\":\"Stockevents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Stockevents\",\"searchable\":false,\"sortable\":false}},\"critic\":{\"edit\":{\"label\":\"Critic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Critic\",\"searchable\":true,\"sortable\":true}},\"stock\":{\"edit\":{\"label\":\"Stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Stock\",\"searchable\":true,\"sortable\":true}},\"cat\":{\"edit\":{\"label\":\"Cat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cat\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"year\":{\"edit\":{\"label\":\"Year\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Year\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"code\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"cat\",\"size\":6},{\"name\":\"fab\",\"size\":6}],[{\"name\":\"model\",\"size\":6},{\"name\":\"ver\",\"size\":6}],[{\"name\":\"year\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"critic\",\"size\":4},{\"name\":\"stock\",\"size\":4}]],\"editRelations\":[\"stockevents\"],\"list\":[\"id\",\"code\",\"name\",\"cat\",\"stock\",\"price\"]}}', 'object', '', ''),
(27, 'model_def_application::stockevent.stockevent', '{\"uid\":\"application::stockevent.stockevent\",\"collectionName\":\"stockevents\",\"kind\":\"collectionType\",\"info\":{\"name\":\"stockevent\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"add\",\"remove\"]},\"qty\":{\"type\":\"integer\"},\"product\":{\"model\":\"product\",\"via\":\"stockevents\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::application::stockevent.stockevent', '{\"uid\":\"application::stockevent.stockevent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"qty\":{\"edit\":{\"label\":\"Qty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Qty\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"code\"},\"list\":{\"label\":\"Product\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"type\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"qty\",\"size\":4}]],\"editRelations\":[\"product\"]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locales`
--

CREATE TABLE `i18n_locales` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `i18n_locales`
--

INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English (en)', 'en', NULL, NULL, '2021-11-24 20:33:10', '2021-11-24 20:33:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cat` varchar(255) DEFAULT NULL,
  `fab` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `ver` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `critic` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `cat`, `fab`, `model`, `ver`, `year`, `price`, `critic`, `stock`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1405', 'Fuelle Homocinetica BT-2047', 'Fuelles', 'CIB', NULL, NULL, NULL, 500, 1, 20, '2021-11-24 17:50:51', 1, 1, '2021-11-24 20:50:50', '2021-11-24 20:50:51'),
(2, '1406', 'Fuelle Homocinetica  VW-1-1003 1845', 'Fuelles', 'Genérico', NULL, NULL, NULL, 1000, 1, 10, '2021-11-24 17:53:03', 1, 1, '2021-11-24 20:52:42', '2021-11-24 20:53:03'),
(3, '4888', 'Empaquetadura Culata KGK 11141-71C00', 'Empaquetadura Culata', 'KGK', NULL, NULL, NULL, 8990, 1, 5, '2021-11-24 17:54:38', 1, 1, '2021-11-24 20:54:36', '2021-11-24 20:56:02'),
(4, '4923', 'Empaquetadura Culata KP 11141-79F10', 'Empaquetadura Culata', 'KP', NULL, NULL, NULL, 5990, 1, 3, '2021-11-24 17:56:06', 1, 1, '2021-11-24 20:55:41', '2021-11-24 20:56:06'),
(5, '4001', 'Empaquetadura Válvulas GOMA emptapaved000', 'Empaquetadura Válvulas', 'Nissan', '', '', NULL, 2990, 1, 5, '2021-11-24 17:59:20', 1, 1, '2021-11-24 20:58:58', '2021-11-24 20:59:28'),
(6, '4002', 'Empaquetadura Válvulas GOMA emptapav13700', 'Empaquetadura Válvulas', 'Hyundai', NULL, NULL, NULL, 19990, 1, 10, '2021-11-24 18:01:15', 1, 1, '2021-11-24 21:01:13', '2021-11-24 21:01:15'),
(7, '5005', 'Carbones Alternador 08x18x5 mm', 'Electrico', 'Genérico', NULL, NULL, NULL, 790, 1, 10, '2021-11-24 18:03:06', 1, 1, '2021-11-24 21:03:04', '2021-11-24 21:03:06'),
(8, '6001', 'Bomba de Agua GMB GWSU12A', 'Refrigeración', 'Subaru', 'Todos', 'Todos', '1990-2013', 23990, 1, 8, '2021-11-24 18:05:30', 1, 1, '2021-11-24 21:05:28', '2021-11-24 21:05:30'),
(9, '6002', 'Bomba de Agua DGP GWD32A', 'Refrigeración', 'Daihatsu', 'Todos', 'Todos', NULL, 16990, 1, 4, '2021-11-24 18:07:03', 1, 1, '2021-11-24 21:07:02', '2021-11-24 21:07:03'),
(10, '7023', 'Espejo Derecho', 'Espejos', 'Hyundai', 'Porter H100', 'Todos', '2004-2005', 24990, 1, 1, '2021-11-24 18:09:13', 1, 1, '2021-11-24 21:09:09', '2021-11-24 21:09:13'),
(11, '7024', 'Espejo Izquierdo', 'Espejos', 'Kia', 'Rio', 'Todos', '2005-2012', 15990, 1, 2, '2021-11-24 18:10:22', 1, 1, '2021-11-24 21:10:20', '2021-11-24 21:10:22'),
(12, '7025', 'Espejo Izquierdo', 'Espejos', 'Chevrolet', 'Sail', 'Todos', '2011-2012', 31990, 1, 2, '2021-11-24 18:11:29', 1, 1, '2021-11-24 21:11:27', '2021-11-24 21:11:29'),
(13, '7026', 'Espejo Derecho', 'Espejos', 'Chevrolet', 'Sail', 'Todos', '2011-2012', 31990, 1, 2, '2021-11-24 18:12:44', 1, 1, '2021-11-24 21:12:10', '2021-11-24 21:12:44'),
(14, '8050', 'Optico Delantero Derecho', 'Opticos', 'Samsung', 'SM3', 'Todos', '2006-2014', 69990, 1, 3, '2021-11-24 18:15:20', 1, 1, '2021-11-24 21:15:17', '2021-11-24 21:15:20'),
(15, '8051', 'Optico Delantero Izquierdo', 'Opticos', 'Samsung', 'SM3', 'Todos', '2006-2014', 69990, 1, 3, '2021-11-24 18:15:55', 1, 1, '2021-11-24 21:15:53', '2021-11-24 21:15:55'),
(16, '3050', 'Piola Acelerador', 'Alimentación', 'Suzuki', 'Super Carry', 'Todos', '1986', 2006, 1, 10, '2021-11-24 18:16:57', 1, 1, '2021-11-24 21:16:54', '2021-11-24 21:16:57'),
(17, '2071', 'Varilla Nivel Aceite', 'Aceite', 'JAC', '137-S3', 'Todos', '2010-2019', 5990, 1, 4, '2021-11-24 18:18:29', 1, 1, '2021-11-24 21:18:27', '2021-11-24 21:18:29'),
(18, '2068', 'Filtro Aceite DGP 26300-35504', 'Aceite', 'DGP', NULL, NULL, NULL, 2990, 1, 15, '2021-11-24 18:20:12', 1, 1, '2021-11-24 21:20:11', '2021-11-24 21:20:12'),
(19, '2072', 'Filtro Aceite TROOP 26300-02500', 'Aceite', 'TROOP', NULL, NULL, NULL, 1990, 1, 14, '2021-11-24 18:21:22', 1, 1, '2021-11-24 21:20:34', '2021-11-24 21:21:22'),
(20, '1512', 'Balatas de Frenos Trasera 53200M68KK00', 'Balatas Traseras', 'Suzuki', 'Celerio', 'Todos', '2009-2015', 29990, 1, 8, '2021-11-24 18:23:39', 1, 1, '2021-11-24 21:23:37', '2021-11-24 21:23:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stockevents`
--

CREATE TABLE `stockevents` (
  `id` int UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `product` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `stockevents`
--

INSERT INTO `stockevents` (`id`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `type`, `qty`, `product`) VALUES
(1, '2021-11-24 18:25:01', 1, 1, '2021-11-24 21:24:22', '2021-11-24 21:25:01', 'add', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
(1, 'Franco', 'Bocca', NULL, 'fbocca@admin.com', '$2a$10$0hBGSotn2IVQ3zLY2SNTc.kfjHJ7hyPqUcrAXDlSu54dA0FTdwFDm', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(2, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(3, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(4, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(5, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(6, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(7, 'plugins::upload.read', NULL, '{}', '[\"admin::is-creator\"]', 3, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(8, 'plugins::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', 3, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(9, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(10, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(15, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(16, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(17, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(18, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(19, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(20, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(21, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(22, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(23, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(24, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(25, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(26, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(27, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(28, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(29, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(30, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(31, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(32, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(33, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(34, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(35, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(36, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(37, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(38, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(39, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(40, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(43, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(44, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(45, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(47, 'admin::users.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(48, 'admin::users.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(49, 'admin::users.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(50, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(51, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(52, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(53, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(54, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(69, 'plugins::content-manager.explorer.create', 'application::product.product', '{\"fields\":[\"code\",\"name\",\"cat\",\"fab\",\"model\",\"ver\",\"year\",\"price\",\"critic\",\"stock\",\"stockevents\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(70, 'plugins::content-manager.explorer.create', 'application::stockevent.stockevent', '{\"fields\":[\"type\",\"qty\",\"product\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(71, 'plugins::content-manager.explorer.read', 'application::product.product', '{\"fields\":[\"code\",\"name\",\"cat\",\"fab\",\"model\",\"ver\",\"year\",\"price\",\"critic\",\"stock\",\"stockevents\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(72, 'plugins::content-manager.explorer.read', 'application::stockevent.stockevent', '{\"fields\":[\"type\",\"qty\",\"product\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(73, 'plugins::content-manager.explorer.update', 'application::product.product', '{\"fields\":[\"code\",\"name\",\"cat\",\"fab\",\"model\",\"ver\",\"year\",\"price\",\"critic\",\"stock\",\"stockevents\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(74, 'plugins::content-manager.explorer.update', 'application::stockevent.stockevent', '{\"fields\":[\"type\",\"qty\",\"product\"]}', '[]', 1, '2021-11-24 20:44:01', '2021-11-24 20:44:01'),
(80, 'plugins::content-manager.explorer.delete', 'application::product.product', '{}', '[]', 1, '2021-11-24 21:24:12', '2021-11-24 21:24:12'),
(81, 'plugins::content-manager.explorer.delete', 'application::stockevent.stockevent', '{}', '[]', 1, '2021-11-24 21:24:12', '2021-11-24 21:24:12'),
(82, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-11-24 21:24:12', '2021-11-24 21:24:12'),
(83, 'plugins::content-manager.explorer.publish', 'application::product.product', '{}', '[]', 1, '2021-11-24 21:24:12', '2021-11-24 21:24:12'),
(84, 'plugins::content-manager.explorer.publish', 'application::stockevent.stockevent', '{}', '[]', 1, '2021-11-24 21:24:12', '2021-11-24 21:24:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-11-24 20:33:11', '2021-11-24 20:33:11'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-11-24 20:33:11', '2021-11-24 20:33:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int UNSIGNED NOT NULL,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(5, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(34, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(35, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(37, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(38, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(39, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(40, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(41, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(44, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(45, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(46, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(47, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(48, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(49, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(50, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(52, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(57, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(58, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(59, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(60, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(61, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(62, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(63, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(64, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(65, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(66, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(67, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(68, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(69, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(70, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(71, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(72, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(73, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(74, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(75, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(76, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(77, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(78, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(79, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(80, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(81, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(82, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(83, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
(84, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
(85, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
(86, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
(87, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
(88, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
(89, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
(90, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
(91, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
(92, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
(93, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
(94, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
(95, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(96, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(97, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(98, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(99, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(100, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(101, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(102, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(103, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(104, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(105, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(106, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(107, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(108, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(109, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(110, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(111, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(113, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(114, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(115, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(117, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(119, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(120, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(121, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(123, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(124, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(125, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(131, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(133, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(138, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(139, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(143, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(146, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(147, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(148, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(149, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(151, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(152, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(153, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(154, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(155, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(156, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(157, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(158, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(159, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(160, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(161, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(162, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(163, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(164, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(165, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(166, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(167, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(168, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(169, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(170, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(171, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(172, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(173, 'application', 'product', 'count', 0, '', 1, NULL, NULL),
(174, 'application', 'product', 'count', 1, '', 2, NULL, NULL),
(175, 'application', 'product', 'create', 0, '', 1, NULL, NULL),
(176, 'application', 'product', 'create', 1, '', 2, NULL, NULL),
(177, 'application', 'product', 'delete', 0, '', 1, NULL, NULL),
(178, 'application', 'product', 'delete', 1, '', 2, NULL, NULL),
(179, 'application', 'product', 'find', 0, '', 1, NULL, NULL),
(180, 'application', 'product', 'find', 1, '', 2, NULL, NULL),
(181, 'application', 'product', 'findone', 0, '', 1, NULL, NULL),
(182, 'application', 'product', 'findone', 1, '', 2, NULL, NULL),
(183, 'application', 'product', 'update', 0, '', 1, NULL, NULL),
(184, 'application', 'product', 'update', 1, '', 2, NULL, NULL),
(185, 'application', 'stockevent', 'findone', 0, '', 1, NULL, NULL),
(186, 'application', 'stockevent', 'find', 1, '', 2, NULL, NULL),
(187, 'application', 'stockevent', 'find', 0, '', 1, NULL, NULL),
(188, 'application', 'stockevent', 'delete', 1, '', 2, NULL, NULL),
(189, 'application', 'stockevent', 'delete', 0, '', 1, NULL, NULL),
(190, 'application', 'stockevent', 'create', 1, '', 2, NULL, NULL),
(191, 'application', 'stockevent', 'create', 0, '', 1, NULL, NULL),
(192, 'application', 'stockevent', 'count', 1, '', 2, NULL, NULL),
(193, 'application', 'stockevent', 'count', 0, '', 1, NULL, NULL),
(194, 'application', 'stockevent', 'findone', 1, '', 2, NULL, NULL),
(195, 'application', 'stockevent', 'update', 0, '', 1, NULL, NULL),
(196, 'application', 'stockevent', 'update', 1, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `i18n_locales`
--
ALTER TABLE `i18n_locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i18n_locales_code_unique` (`code`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indices de la tabla `stockevents`
--
ALTER TABLE `stockevents`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indices de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indices de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indices de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `i18n_locales`
--
ALTER TABLE `i18n_locales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `stockevents`
--
ALTER TABLE `stockevents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
