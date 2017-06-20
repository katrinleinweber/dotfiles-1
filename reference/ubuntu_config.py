#!/usr/bin/env python
#from plumbum import local # Gives you e.g. local["ls"]
#from plumbum.cmd import grep, wc, cat, head, apt
import sys # Gives you access to e.g. argv
import subprocess # Used for calling shell commands from Python scripts

# NB: You can use subprocess.Popen('echo "Hello world!"', shell=True, executable="/bin/bash") for single-line commands

# Call Ubuntu-based update processes
def update():
    updates = ["sudo", "apt", ["update", "upgrade", "dist-upgrade"]]
    for index in updates:
        subprocess.check_output(updates[][index])

# Installs packages from list using apt
def apt_installs(package_list):
    for package in package_list:
        pass

package_list = [""]
