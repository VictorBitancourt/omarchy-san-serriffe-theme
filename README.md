# San Serriffe for Omarchy

An academic, warm-light theme for [Omarchy](https://omarchy.org), inspired by Donald Knuth's work in algorithms, typography, and literate programming.

The wallpaper brings together the failure function of Knuth–Morris–Pratt over `ABRACADABRA` and a large constructed **Q** drawn like a METAFONT glyph. The palette uses cream paper, dark ink, and restrained editorial red.

![San Serriffe desktop](preview.png)

## Install

```sh
omarchy theme install https://github.com/VictorBitancourt/omarchy-san-serriffe-theme
```

San Serriffe is designed to pair with **Latin Modern Mono**, the modernized and extended descendant of Knuth's Computer Modern typeface. Install the TeX Live font package, expose its OpenType files to Fontconfig, and select it through Omarchy:

```sh
sudo pacman -S texlive-fontsrecommended
mkdir -p ~/.local/share/fonts/latin-modern
find /usr/share/texmf-dist/fonts/opentype/public/lm -maxdepth 1 -type f -name '*.otf' \
  -exec ln -sf {} ~/.local/share/fonts/latin-modern/ \;
fc-cache -f
omarchy font set "Latin Modern Mono"
```

The font is recommended, but not required to use the theme. Omarchy applies the theme's colors to supported applications using its native Quattro templates.

## Palette

- Paper: `#EFE3CD`
- Ink: `#2B2318`
- Editorial red: `#AF3029`
- Muted ink: `#705F4C`

## References

- Donald E. Knuth, James H. Morris Jr., and Vaughan R. Pratt, “Fast Pattern Matching in Strings” (1977)
- Donald E. Knuth, *The Art of Computer Programming*
- Donald E. Knuth, *The METAFONTbook*
- Latin Modern by the GUST e-foundry

The name is a nod to the typographic hoax island of San Serriffe.

## License

MIT. See [LICENSE](LICENSE).
