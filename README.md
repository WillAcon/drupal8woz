
## Usage

1. Download this theme into your `themes/custom` directory. You could do a git clone as well but that probably doesn't make much sense. Extract the archive and rename the directory to whatever you wish.

```bash
$ wget https://github.com/WillAcon/drupal8woz/archive/master.zip
$ unzip master.zip
$ mv drupal8woz mytheme
```

2. Next, rename various instances of `DRUPAL8WOZ` in filenames and config files to match your theme name (e.g. `mytheme`). You may also use a script for that purpose.

```bash
$ cd mytheme
$ ./set-theme-name.sh mytheme
```

3. Run `npm install` / `yarn install`
4. Start working on your theme. The SCSS files are in `assets/scss` and JavaScript files are in `assets/js` directories. You may modify other directories as you wish. More details about the SCSS files are present in its own [README](assets/scss/README.md) file.
5. Run `npm run dev` to run webpack in development mode. You may also watch for changes using `npm run watch`. For production mode, run `npm run production`.
