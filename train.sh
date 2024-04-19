python train.py \
--batch 32 --epochs 15 --img 640 --device 0 --min-items 0 --close-mosaic 15 \
--data ./dataset/data.yaml \
--weights ./weights/gelan-c.pt \
--cfg models/detect/gelan-c.yaml \
--hyp hyp.scratch-high.yaml