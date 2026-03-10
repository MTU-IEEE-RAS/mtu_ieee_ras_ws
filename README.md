# mtu_ieee_ras_ws
Docker development environment for learning robotics in Linux (Ubuntu 24.04 / ROS 2 Jazzy). 

This repository is meant to be used as a READ-ONLY (or CLONE-ONLY) environment. 

DO NOT TRY TO PUSH CHANGES FOR THIS REPOSITORY!

## Getting Started

1. Download git from [here](https://git-scm.com/install/windows)
2. Follow the `Install Docker` and `Install VS Code` instructions on this [webpage](https://docs.ros.org/en/kilted/How-To-Guides/Setup-ROS-2-with-VSCode-and-Docker-Container.html)
    * If you are on Windows, download VS Code from this [webpage](https://code.visualstudio.com/download)
    * Make sure to download the `Remote Development` Extension (click on the icon with boxes on the left side of your VS Code window)
3. Clone this repository
4. Using Git Bash, and navigate to this repository
5. Run `./scripts/mtu_ieee_ras_setup.bash` to create the correct configuration file `devcontainer.json` according to your OS
6. In VS Code, type `CTRL+Shift+P` and search for the command `Dev Containers: Reopen in Container`.
    * If that does not work, navigate to `View`->`Command Palette` in VS Code and search for `Dev Containers: Reopen in Container`

## Using this Workspace

1. Run through all steps in previous section `Getting Started`
2. Clone your personal repository into the `dev` or `src` folder, depending on what you are working on
3. Start coding! (Your repository will automatically be mounted within the Docker container)


## Repository Organization

There are two directories: `src` and `dev`. Please place ROS 2 packages in the `src` directory while all other development that does not require ROS 2 will be placed in the `dev` directory.