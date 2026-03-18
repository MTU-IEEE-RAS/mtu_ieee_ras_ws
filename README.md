# mtu_ieee_ras_ws
Docker development environment for learning robotics in Linux (Ubuntu 24.04 / ROS 2 Jazzy). There are two types of developers interacting with this repository: maintainers and users. Maintainers set up activities or other packages so users can learn with them.

## Instructions for Users

This repository is meant to be used as a READ-ONLY (or CLONE-ONLY) environment. 

DO NOT TRY TO PUSH CHANGES FOR THIS REPOSITORY!

### Getting Started

1. Download git from [here](https://git-scm.com/install/windows)
2. Follow the `Install Docker` and `Install VS Code` instructions on this [webpage](https://docs.ros.org/en/kilted/How-To-Guides/Setup-ROS-2-with-VSCode-and-Docker-Container.html)
    * If you are on Windows, download VS Code from this [webpage](https://code.visualstudio.com/download)
    * Make sure to download the `Remote Development` Extension (click on the icon with boxes on the left side of your VS Code window)
3. Clone this repository
4. Using Git Bash, and navigate to this repository
5. Open up VS Code in either git bash or WSL using `code .`
    * If you have errors when using git bash, trying opening VSCode in WSL instead
6. Run `./scripts/mtu_ieee_ras_setup.bash` in git bash or WSL to create the correct configuration file `devcontainer.json` according to your OS
7. Run `git submodule init` and `git submodule update` to ensure submodules are cloned down
8. In VS Code, type `CTRL+Shift+P` and search for the command `Dev Containers: Reopen in Container`.
    * If that does not work, navigate to `View`->`Command Palette` in VS Code and search for `Dev Containers: Reopen in Container`

### Using this Workspace

1. Run through all steps in previous section `Getting Started`
2. Clone your personal repository into the `dev` or `src` folder, depending on what you are working on
3. Run `git submodule init` and `git submodule update` to ensure everything is up to date
4. Start coding! (Your repository will automatically be mounted within the Docker container)


### Repository Organization

There are two directories: `src` and `dev`. Please place ROS 2 packages in the `src` directory while all other development that does not require ROS 2 will be placed in the `dev` directory. Available code to use will be included as gitsubmodules.


### Useful Tips

* Install Python packages: `pip3 install <package name> --break-system-packages` Don't worry, it will not break your packages :)


## Instructions for Maintainers

These instructions detail how to create gitsubmodules and how to fork from other repositories (useful for including others' code in activities).

Be sure to run `./scripts/mtu_ieee_ras_setup.bash` to create the correct configuration file `devcontainer.json` according to your OS.

### Update Submodules

To add submdules, run `git submodule add -b <branch name> git@github.org/<project>/<repo>.git` in the directory location where you want to add the submodule.

### Creating a Forked Repository

This workspace may extend other open source repositories. This is how to fork a repository and maintain the ability to update from the original repo.

1. Create an empty reposiory where you want the forked repository to live
2. Clone down the new repository 
3. In the cloned repo, change the remotes such that `origin` is set to the new location and `sync` is set to the old location.
    * May need to run `git remote add sync <SSH URL TO OLD LOCATION>`
    * Run `git remote -v` to verify there is an origin and sync remote for both fetch and pull

4. Run `git checkout main` to switch to the main branch
5. Run `git pull sync <synced branch at old location>` to place code in new location
6. Run `git push origin main` to place the original forked code in the main branch 
    * The `main` branch in the new location is now synced with the `old branch` branch in the old location

7. Run `git checkout custom_changes` to place all new changes in the `custom_changes` branch

### Updating Forked Repositories

This workspace may extend other open source repositories

1. `git checkout main`
2. moveit2: `git pull sync jazzy`, ompl: `git pull sync main`  This pulls code from the original source
3. `git push origin main` This places the new code in the forked repo
4. `git checkout custom_changes` Switch back to the custom branch
5. `git pull origin main` Pull in chang