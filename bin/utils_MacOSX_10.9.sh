# -*- tab-width : 4; indent-tabs-mode : nil -*-


install_default_autogen_input()
{
    cat > "${BASE_DIR?}/autogen.input.base" <<EOF
--with-junit=${BASE_DIR?}/opt/share/java/junit.jar
--with-ant=${BASE_DIR?}/opt/ant
--with-external-tar=${BASE_DIR?}/ext_tar
EOF
}

install_build_dep()
{
    install_generic_conf_make_install "autoconf" "2.69" "http://mirrors.kernel.org/gnu/autoconf" "autoconf-2.69.tar.gz"
    install_generic_conf_make_install "automake" "1.14" "http://mirrors.kernel.org/gnu/automake" "automake-1.14.tar.gz"
    install_generic_conf_make_install "make" "4.1" "http://mirrors.kernel.org/gnu/make" "make-4.1.tar.gz"
    install_ant
    install_junit
    install_generic_conf_make_install "doxygen" "1.8.8" "http://ftp.stack.nl/pub/users/dimitri" "doxygen-1.8.8.src.tar.gz"
    install_generic_conf_make_install "ccache" "3.1.9" "http://www.samba.org/ftp/ccache" "ccache-3.1.9.tar.gz"
    install_default_autogen_input
}

os_flavor_notes()
{
cat <<EOF
=============

Add ${BASE_DIR}/opt/bin in front of your PATH before configuring or building libreoffice

When configuring LibreOffice you will need to add:
--with-junit=${BASE_DIR}/opt/share/java/junit.jar

EOF
}
