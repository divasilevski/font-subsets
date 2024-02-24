# Subset variable fonts
The best way to reduce the weight of a font is to cut out unnecessary symbols from it. The [fonttools](https://fonttools.readthedocs.io/en/latest/index.html) library is suitable for this. This docker helps build an environment for work.

## Usage
* Add fonts to the fonts [folder](https://github.com/divasilevski/font-subsets/tree/master/fonts).
* The [unicodes.txt](https://github.com/divasilevski/font-subsets/blob/master/unicodes.txt) file contains a whitelist of characters that will remain.
* In [docker-compose](https://github.com/divasilevski/font-subsets/blob/master/docker-compose.yml#L6) you can change the [command](https://fonttools.readthedocs.io/en/latest/subset/) settings.

```bush
docker compose up --build
```

You can check the results on the website [wakamaifondue.com](https://wakamaifondue.com).
