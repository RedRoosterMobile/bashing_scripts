#!/bin/bash
# 300x250
curl -o btc_price.png https://bitcoinapi.de/widget/current-btc-price?size=3&type=dark
wait
echo "Cutting BTC price.."
convert -colorspace Gray  btc_price.png -crop 180x50+75+20  +repage output_btc.png
echo "Running OCR-scan.."
tesseract output_btc.png btc_price
cat btc_price.txt
rm btc_price.png
rm output_btc.png
