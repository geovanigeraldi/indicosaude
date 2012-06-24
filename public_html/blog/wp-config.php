<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wordpress');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'geraldi');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6dl?i|C%i3zlIIV8,Zvyp94FZk<wmLCX{yN -C2m.uIsx4;]q}]Tw]_^XsU*:JwK');
define('SECURE_AUTH_KEY',  '/R?6HaY%)s|-Mgn/e$=z?Jw8c_]`q-Ls}c&{T.}JQ-n1hhhbpnRft2T=NbiqZ~As');
define('LOGGED_IN_KEY',    'vXb46CeY[#f:Ql2-efV&Rb#No9GLB)]fL.4H!N.8&85p2,p<4$a?,oc%!=0Mb)Nz');
define('NONCE_KEY',        'qlA5RG$Y!9_)Ir 0+C%%6rjh_pTK2i=Sl*RK,|J3IKd#auY^)Uz{h/il`V!61D9m');
define('AUTH_SALT',        'zz#HiD]aI_~w!S%&CN,Sp!zb,vI5)seUx:4fgSGMFJ2W~NbYr*bCO uE,;>aUz*H');
define('SECURE_AUTH_SALT', ' VI>gNA#@p:b8tWK,1Dr/K*uxcqxGO=V:e]k*|A~iX%PLr~ijSl+qwMD7UvBxI9s');
define('LOGGED_IN_SALT',   '9K2VG_][Vn(9Oe}oBT<oTFXNn8o4yHK%^y~4>IV>0`hS%esf[Z#.;_f;4OH{:YmS');
define('NONCE_SALT',       'MtW-?H;q5*<nn|Dm5+B?>&2I;r}pq/7cc0uah~ep,sGJeEEvP`K]QSHGM=?E#!jh');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * O idioma localizado do WordPress é o inglês por padrão.
 *
 * Altere esta definição para localizar o WordPress. Um arquivo MO correspondente ao
 * idioma escolhido deve ser instalado em wp-content/languages. Por exemplo, instale
 * pt_BR.mo em wp-content/languages e altere WPLANG para 'pt_BR' para habilitar o suporte
 * ao português do Brasil.
 */
define('WPLANG', 'pt_BR');

/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');

