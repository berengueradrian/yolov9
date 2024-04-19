export containerName=$USER-yolov9-birds

docker run --gpus '"device=0"' --rm -d\
        -w "/yolov9" \
        --name $containerName \
        --volume="$PWD/:/yolov9:rw" \
        --volume="/home/aberenguer/pajaros/chan-twin/dataset/:/yolov9/dataset:rw" \
        --shm-size=8gb \
        --memory=16gb \
        aberenguer/yolov9-birds tail -f /dev/null
