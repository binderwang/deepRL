#!/bin/bash


#program options
GPU=false
GUI=false
rom=./roms/breakout.bin
epsilon_start=1.0
epsilon_min=0.1
epsilon_decay=0.98
epsilon_explore_idx=10000
replay_memory_capacity=50000
replay_start_size=500
sampleStrategy="uniform"
update_frequency=1000
discount_factor=0.98
solver=./prototxt/aleSolver.prototxt
skip_frame=3
show_frame=false
model=null
evaluate=false



args="--gpu ${GPU} --gui ${GUI} --rom ${rom} --epsilon_start ${epsilon_start} --epsilon_min ${epsilon_min} --epsilon_decay ${epsilon_decay} --epsilon_explore_idx ${epsilon_explore_idx} --replay_memory_capacity ${replay_memory_capacity} --replay_start_size ${replay_start_size} --sampleStrategy ${sampleStrategy} --update_frequency ${update_frequency} --discount_factor ${discount_factor} --solver ${solver} --skip_frame ${skip_frame} --show_frame ${show_frame} --model ${model} --evaluate ${evaluate}"

echo ${args}

#run
./deepRL ${args}