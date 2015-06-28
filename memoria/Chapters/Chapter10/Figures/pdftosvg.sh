for i in *.pdf; do
    inkscape --without-gui --file=${i} --export-plain-svg="${i%%.*}".svg --export-area-drawing
done
