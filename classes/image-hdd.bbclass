############################################################################
##
## Copyright (C) 2016 The Qt Company Ltd.
## Contact: https://www.qt.io/licensing/
##
## This file is part of the Boot to Qt meta layer.
##
## $QT_BEGIN_LICENSE:GPL$
## Commercial License Usage
## Licensees holding valid commercial Qt licenses may use this file in
## accordance with the commercial license agreement provided with the
## Software or, alternatively, in accordance with the terms contained in
## a written agreement between you and The Qt Company. For licensing terms
## and conditions see https://www.qt.io/terms-conditions. For further
## information use the contact form at https://www.qt.io/contact-us.
##
## GNU General Public License Usage
## Alternatively, this file may be used under the terms of the GNU
## General Public License version 3 or (at your option) any later version
## approved by the KDE Free Qt Foundation. The licenses are as published by
## the Free Software Foundation and appearing in the file LICENSE.GPL3
## included in the packaging of this file. Please review the following
## information to ensure the GNU General Public License requirements will
## be met: https://www.gnu.org/licenses/gpl-3.0.html.
##
## $QT_END_LICENSE$
##
############################################################################

VM_ROOTFS_TYPE = "ext3"
ROOT_VM = "root=/dev/hda2"
LABELS_VM = "boot"
AUTO_SYSLINUXMENU = "0"
SYSLINUX_DEFAULT_CONSOLE = "console=ttyS0,115200"

inherit image_types image-vm

create_hdd_image () {
    cd ${IMGDEPLOYDIR}
    rm -f ${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.hdd
    ln -s ${IMAGE_NAME}.hdddirect ${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.hdd
}

python do_hddimg() {
        bb.build.exec_func('create_hdd_image', d)
}

addtask hddimg after do_bootdirectdisk before do_image_complete
