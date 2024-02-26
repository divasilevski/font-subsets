# Subset variable fonts
The best way to reduce the weight of a font is to cut out unnecessary symbols from it. The [fonttools](https://fonttools.readthedocs.io/en/latest/index.html) library is suitable for this. This docker helps build an environment for work.

## Usage
- Add fonts to the [folder](https://github.com/divasilevski/font-subsets/tree/master/fonts).
- The [unicodes.txt](https://github.com/divasilevski/font-subsets/blob/master/unicodes.txt) file contains a whitelist of characters that will remain.
- In [docker-compose](https://github.com/divasilevski/font-subsets/blob/master/docker-compose.yml#L6) you can change the [command](https://fonttools.readthedocs.io/en/latest/subset/) settings.

```bush
docker compose up --build
```

You can check the results on the website [wakamaifondue.com](https://wakamaifondue.com).

## Unicodes
Unicode character sets can be found on [symbl.cc](https://symbl.cc/en/unicode/blocks/cyrillic/) or [wikipedia.org](https://en.wikipedia.org/wiki/Unicode_block). The default sets for the Inter font are taken from [here](https://fonts.googleapis.com/css2?family=Inter&display=swap). Use # to comment out unnecessary things.

## Command
Documentation for the subset command can be found on the [fonttools.readthedocs.io](https://fonttools.readthedocs.io/en/latest/subset/). Some useful things:

- Use a flag `--flavor=woff2` or `--with-zopfli --flavor=woff` to generate fonts in the required formats.
- Use a flag `--layout-features-=frac,nums,dnom` to remove some features.
- Use a flag `--verbose` to display information of the subsetting process.
