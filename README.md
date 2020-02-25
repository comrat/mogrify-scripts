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
./change_background.sh -i ./ -f red -t transparent
```

## make_sprite.sh
Create single psrite image (place all images in row)

## crop_size.sh
Resize and crop image

## make_gif.sh
Make single GIF animation file from all PNG files in -i directory

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
