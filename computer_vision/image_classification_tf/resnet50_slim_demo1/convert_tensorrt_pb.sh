#!/bin/bash


_CUDA_VISIBLE_DEVICES='0'
_DATA_TYPE='FP32'  # data precision use FP32 FP16 or INT8
_PB_PATH='path of the frozen pb model'
_TENSORRT_PB_SAVE_PATH='path to save the transformed model(use tensorRT to speed up)'

python src/convert_tensorrt_pb.py \
    --data_type $_DATA_TYPE \
    --pb_path $_PB_PATH \
    --tensorrt_pb_save_path $_TENSORRT_PB_SAVE_PATH \
    --cuda_visible_devices $_CUDA_VISIBLE_DEVICES 
