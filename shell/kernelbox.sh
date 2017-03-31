#!/bin/bash

# This script is used to genkernel accurate kernelboxs based on a
# specific Linux kernel version tag

GIT_KERNEL_URI="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"
KERNEL_DIR="./kernels"
LINUX_STABLE_SOURCES_DIR="./linux-stable"


init(){

if [[ ! -d "${KERNEL_DIR}" ]]; then
	mkdir -p "${KERNEL_DIR}" || die "Cannot create ${KERNEL_DIR} dir"
fi



}

usage(){
printf "Usage:"
}
