#!/bin/bash
# bootstrap.sh
# Attempt at OS- and distro-independent bootstrapping script; also see arch_config.sh
# Replaces autoconfig.sh, which was supposed to be distro-independent for Linux only

# Checks whether on Mac or Linux, and if all else fails, ask the user
function get_os() {
    if [[ "$(uname -a)" =~ "Darwin" ]]; then
        os="Mac"
    elif [[ "$(uname -a)" =~ "Linux" ]]; then
        # Note that uname -a output is generated using /proc/version, so you could always cat that if needed!
        os="Linux"
    else
        read -r 'Mac or Linux? ' user_said_os
        if [[ "$user_said_os" == "^[Mm][Aa][Cc]"* || "$user_said_os" == "[Oo][Ss][[:space:]]?[Xx]"* ]]; then
            os="Mac"
        elif [[ "$user_said_os" == "^[Ll][Ii][Nn][Uu][Xx]"* || "$user_said_os" == "[Uu][Nn][Ii][Xx]"* ]]; then
            os="Linux"
        fi
    fi
}

function is_installed() {
    [ -x "$(which "$1")" ]
}

function install_the_things() {
    if [[ "$os" == "Mac" ]]; then
        # Get Homebrew going installing All The Things without sudo!
        package_manager="brew"
        package_install_cmd="install"
        "$package_manager $package_install_cmd" "${packages[@]}"
    elif [[ "$os" == "Linux" ]]; then
        package_install_cmd="install"
        package_update_cmd="update"
        package_force_update_cmd=""
        package_upgrade_cmd="upgrade"
        package_force_upgrade_cmd="dist-upgrade"
        package_search_cmd=""
        package_remove_cmd="remove"
        # TODO: Extend to all package managers please!
        if is_installed apt; then
            package_manager="apt"
            package_force_upgrade_cmd="full-upgrade"
        elif is_installed apt-get; then
            package_manager="apt-get"
        elif is_installed aptitude; then
            package_manager="aptitude"
            package_force_upgrade_cmd="full-upgrade"
        elif is_installed dpkg; then
            package_manager="dpkg"
            package_install_cmd="--install"
            #package_update_cmd="update"
        elif is_installed yum; then
            package_manager="yum"
            # Single command to update and upgrade
            package_upgrade_cmd="update"
            package_remove_cmd="erase"
        elif is_installed rpm; then
            package_manager="rpm"
            package_install_cmd="--install"
            package_upgrade_cmd="--upgrade"
            package_remove_cmd="--erase"
            package_search_cmd="--query"
        # elif is_installed up2date; then
        #     package_manager="up2date"
        #     package_install_cmd="install"
        #     package_update_cmd="update"
        elif is_installed pacman; then
            package_manager="pacman"
            package_install_cmd="-S"
            package_update_cmd="-Syuc"
            package_force_update_cmd="-Syyu"
            package_upgrade_cmd="-U"
            package_search_cmd="-Ss" # Or -Q
            package_remove_cmd="-Rs"
        elif is_installed portage; then
            package_manager="emerge"
            package_update_cmd="--sync"
            package_upgrade_cmd="-uDNav" # Or "--update --deep"
            package_search_cmd="--search"
            package_remove_cmd="${package_manager##[a-z]*}unmerge"
        else
            echo 'No package manager found!'
            exit 2
        fi
        "sudo ${package_manager} ${package_install_cmd}" "${packages[@]}"
    fi
}

${package_update_cmd}
${package_force_update_cmd}
${package_upgrade_cmd}
${package_force_upgrade_cmd}
${package_search_cmd}
${package_remove_cmd}

# Grab package list from file
package_file="$HOME/.dotfiles/package_list"
declare -a packages
if [[ -f "${package_file}" ]]; then
    while read -r line; do
        # Ignore "commented" lines beginning with hash in package_file
        [[ $line = \#* ]] && continue
        #printf '%s\n' "$line" # Check
        packages+=("$line")
    done < "${package_file}"
fi

# Try and find out which distro (now shouldn't be necessary; just check for package manager instead)
# if [[ "$os" == "Linux" ]]; then
#     cat /etc/*-release
#     #lsb_release -a # Backup check in some cases?
# fi

