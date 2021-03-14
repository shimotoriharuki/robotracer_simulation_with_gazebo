# Overview

This repository can simulate Robotracer line traces.
The simulator uses gazebo and the sdf model uses [this repository](https://github.com/shimotoriharuki/robotracer_sdf).

[![Image from Gyazo](https://i.gyazo.com/7fd4fe6971cad07e5ec80cd1dea8a198.gif)](https://gyazo.com/7fd4fe6971cad07e5ec80cd1dea8a198)
Note: The Gif is 47x faster. The simulation actually takes longer.

# Usage

## prerequisite

### Environment

- Your pc can run Gazebo on Ubuntu 18.04
- Your PC can run Simulink

The environment that has been confirmed to work is as follows.

- Gazebo 9.0.0 on Ubuntu 18.04
- Simulink in MATLAB R2020a on Windows 10
- CPU: Intel i7-9750H 2.60GHz
- GPU: NVIDIA Quadro T2000
- Memory: 32Gbyte

### Communication between Simulink and gazebo

Make sure you can communicate in [this tutorial](https://jp.mathworks.com/help/robotics/ug/perform-co-simulation-between-simulink-and-gazebo.html?lang=en).

### Prepare a robotrace model

You need to be able to clone [This repository](https://github.com/shimotoriharuki/robotracer_sdf) and launch the world.

## Clone

Clone this repository to a matlab related workspace.

```bash
git clone https://github.com/shimotoriharuki/robotracer_simulation_with_gazebo
```

## Run

1. As with the [tutorial](https://jp.mathworks.com/help/robotics/ug/perform-co-simulation-between-simulink-and-gazebo.html?lang=en), make sure you can communicate(If you cannot communicate even though the IP address is correct, try restarting the PC)
1. Load the `change_data_size.mat` contained in this repository into the MATLAB workspace
1. Execute the Simulink.
1. The Robotracer in Gazebo start running.

# Licence

See following link.
- [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
