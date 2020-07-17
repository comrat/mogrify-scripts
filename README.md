# mogrify-scripts
Image processing script collection

## change_color.sh
Change color in `input.png` image and replace it in `output.png` image to another. Example: change 'red' color in `input.png` to 'transparent' and save result in `output.png`
```
./change_background.sh -f red -t transparent
```

## change_color_dir.sh
Change color in directory images and replace it in `output.png` image to another. Example: change 'red' color in `input.png` to 'transparent' and save result in `output.png`
```
./change_color_dir.sh -i ./ -f red -t transparent
```

## make_sprite.sh
Create single sprite image `-o` from `-f` frames from png images in `-i` input directory. Each frame is `-w`x`-h` size
```
./make_sprite.sh -f 30 -w 100 -h 100 -i ./input_dir -o output_sprite.png
```

## crop_size.sh
Resize and crop image
```
./crop_size.sh -i input.png -o output.png -w 1280 -h 720
```

## make_gif.sh
Make single GIF animation file from all PNG files in -i directory
```
./make_gif.sh -i input.mp4 -o output.mp4
```

## change_format.sh
Change image format script. Usage example:
```
./change_format.sh -i input.jpg -o png
```

## resize.sh
Resize image script. Usage example:
```
./resize.sh -i input.jpg -w 100 -h 200 -o resized.jpg
```

## resize_dir.sh
Resize all images in directory script. Usage example:
```
./resize.sh -i ./ -w 100 -h 200 -o ./output
```

## make_pdf.sh
Create PDF from input files:
```
./make_pdf.sh -i *.png -o output.pdf
```

## remove_alpha.sh
Remove alpha channel from RGBA image
```
./remove_alpha.sh -i input.png -o output.png
```

## remove_alpha_dir.sh
Remove alpha channel from all RGBA images in directory
```
./remove_alpha_dir.sh -i ./input -o ./output
```
