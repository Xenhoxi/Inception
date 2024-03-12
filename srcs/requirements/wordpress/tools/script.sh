mkdir -p /var/www/wordpress
cd /var/www/wordpress/
sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" wp-config-sample.php
sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" wp-config-sample.php
sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" wp-config-sample.php
sed -i "s/'localhost'/'mariadb:3306'/g" wp-config-sample.php
mv wp-config-sample.php wp-config.php
