cd /var/www/wordpress/

if test ! -e "wp-config.php"
then

    sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" wp-config-sample.php
    sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" wp-config-sample.php
    sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" wp-config-sample.php
    sed -i "s/'localhost'/'mariadb:3306'/g" wp-config-sample.php
    mv wp-config-sample.php wp-config.php

    if ! wp core is-installed --allow-root; then
        wp core install --allow-root \
                        --url="ljerinec.42.fr" \
                        --path="." \
                        --title="Inception" \
                        --admin_user="$WP_USER1" \
                        --admin_password="$WP_USER1_PASS" \
                        --admin_email=admin@mail.com \
                        --skip-email
    fi

    if ! wp user get "$WP_USER2" --field=login > /dev/null 2>&1 --allow-root; then
        wp user create --allow-root $WP_USER2 lemaildedilo@gmail.com --user_pass=$WP_USER2_PASS --role=author
    fi

fi
