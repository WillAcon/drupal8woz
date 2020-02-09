#!/usr/bin/env bash

if [ "$1" == "" ]; then
    echo "Usage: $0 new_theme_name";
    exit 1;
fi

sed -i "s/drupal8woz/$1/g" config/schema/drupal8woz.schema.yml
sed -i "s/drupal8woz/$1/g" drupal8woz.starterkit.yml

mv drupal8woz.libraries.yml $1.libraries.yml
mv drupal8woz.starterkit.yml $1.info.yml
mv drupal8woz.theme $1.theme

mv config/install/drupal8woz.settings.yml config/install/$1.settings.yml
mv config/schema/drupal8woz.schema.yml config/schema/$1.schema.yml

rm $0