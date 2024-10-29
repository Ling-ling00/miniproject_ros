# FRA501 Mini Project RoboticsDev: Chasing Game

## Project Overviews

### Schematics of System(`rqt_graph`)

![image](https://github.com/user-attachments/assets/62ade031-3cdb-4416-8702-71ae8987aa68)

## ROS 2

## micro-ROS

### Joystick (`/joy`)

This node, named `/joy`, is created to receive input data from a joystick through DMA and GPIO Input. The node processes the joystick input, translating it into linear-velocity, and then publishes these commands via the topic `/<Robot Name>/cmd_vel`. This setup enables robot control using a joystick. Each button on the joystick is assigned a specific function, allowing different control actions as shown in the figure below.

![Wat Pa la (1)](https://github.com/user-attachments/assets/1b135815-f22c-44fa-9ab4-a4f9b301a545)
