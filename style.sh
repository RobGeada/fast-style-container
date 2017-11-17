#!/bin/bash
start=$SECONDS
cd /home/fast-style
#============================================================
#=============NEURAL STYLE PARAMETERS========================
#============================================================
#These settings are to be played with; change the content 
#and style images, the image width, iterations, etc.
#You can find a full list of settings at 
#https://github.com/anishathalye/neural-style

python style.py --style $(pwd)/images/other/wave.jpg \
  --checkpoint-dir  $(pwd)/images/results \
  --test $(pwd)/images/content/chicago.jpg \
  --test-dir $(pwd)/images/results \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20 \
  --epochs 2
  
#============================================================

duration=$(( SECONDS - start ))

#============================================================
#=============EMAIL NOTIFICATION SETTINGS====================
#============================================================
#fill in the following parameters as follows:
#	-dest: an email address to send the results to
#	-tag:  a name by which to identify this result
# ie, --dest email@email.com --tag ChicagoWave

python ocEmail.py --dest [###YOUR EMAIL HERE###] --tag wave --timer $duration
#============================================================

echo "email sent!"
sleep 1000000000