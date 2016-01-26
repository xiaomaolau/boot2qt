#############################################################################
##
## Copyright (C) 2014 Digia Plc and/or its subsidiary(-ies).
##
## This file is part of the Qt Enterprise Embedded Scripts of the Qt
## framework.
##
## $QT_BEGIN_LICENSE$
## Commercial License Usage Only
## Licensees holding valid commercial Qt license agreements with Digia
## with an appropriate addendum covering the Qt Enterprise Embedded Scripts,
## may use this file in accordance with the terms contained in said license
## agreement.
##
## For further information use the contact form at
## http://www.qt.io/contact-us.
##
##
## $QT_END_LICENSE$
##
#############################################################################

DESCRIPTION = "Qt Charts"
LICENSE = "QtEnterprise"
LIC_FILES_CHKSUM = "file://src/charts/qchart.h;md5=a712f087e2146153f45db2e8eb1a3985;beginline=1;endline=17"

inherit qt5-module qtquickcompiler
require recipes-qt/qt5/qt5-git.inc

SRCREV = "a801e78fb8d1000bdcd0d47e24edffbf219650e8"

DEPENDS = "qtbase qtdeclarative qtmultimedia"