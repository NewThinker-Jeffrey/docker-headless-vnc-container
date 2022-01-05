#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"

# This link becomes inaccessible.
# wget -qO- https://dl.bintray.com/tigervnc/stable/tigervnc-1.8.0.x86_64.tar.gz | tar xz --strip 1 -C /

# Why to use v1.10.0 other than newer version?
# Since tigervnc had some major changes in it's latest release (from v1.11.0): vncserver in particular 
# has "gotten a major redesign to be compatible with modern distributions".
# See:
#     https://bbs.archlinux.org/viewtopic.php?id=259472
#     https://github.com/TigerVNC/tigervnc/releases/tag/v1.11.0
#
# And, I did tried v1.12.0, and it failed to work directly:
# wget -qO- https://jaist.dl.sourceforge.net/project/tigervnc/stable/1.12.0/tigervnc-1.12.0.x86_64.tar.gz | tar xz --strip 1 -C /

wget -qO- https://jaist.dl.sourceforge.net/project/tigervnc/stable/1.10.0/tigervnc-1.10.0.x86_64.tar.gz | tar xz --strip 1 -C /
