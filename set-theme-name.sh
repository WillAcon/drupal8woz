#!/usr/bin/env bash

if [ "$1" == "" ]; then
    echo "Usage: $0 new_theme_name";
    exit 1;
fi

sed -i "s/DRUPAL8WOZ/$1/g" config/schema/DRUPAL8WOZ.schema.yml
sed -i "s/DRUPAL8WOZ/$1/g" DRUPAL8WOZ.info.yml

mv DRUPAL8WOZ.libraries.yml $1.libraries.yml
mv DRUPAL8WOZ.info.yml $1.info.yml
mv DRUPAL8WOZ.theme $1.theme

mv config/schema/DRUPAL8WOZ.schema.yml config/schema/$1.schema.yml

rm $0