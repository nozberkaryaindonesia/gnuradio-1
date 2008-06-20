dnl Copyright 2001,2002,2003,2004,2005,2006,2008 Free Software Foundation, Inc.
dnl 
dnl This file is part of GNU Radio
dnl 
dnl GNU Radio is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 3, or (at your option)
dnl any later version.
dnl 
dnl GNU Radio is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl 
dnl You should have received a copy of the GNU General Public License
dnl along with GNU Radio; see the file COPYING.  If not, write to
dnl the Free Software Foundation, Inc., 51 Franklin Street,
dnl Boston, MA 02110-1301, USA.

AC_DEFUN([GRC_GRUEL],[
    GRC_ENABLE(gruel)
    GRC_WITH(gruel)

    dnl If execution gets to here, $passed will be:
    dnl   with : if the --with code didn't error out
    dnl   yes  : if the --enable code passed muster and all dependencies are met
    dnl   no   : otherwise
    if test $passed != with; then
	dnl how and where to find INCLUDES and LA
	gruel_INCLUDES="-I\${abs_top_srcdir}/gruel/src/include"
        gruel_LA="\${abs_top_builddir}/gruel/src/lib/libgruel.la"
    fi

    AC_CONFIG_FILES([\
        gruel/Makefile \
        gruel/gruel.pc \
        gruel/src/Makefile \
        gruel/src/include/Makefile \
        gruel/src/include/gruel/Makefile \
        gruel/src/lib/Makefile \
    ])

    GRC_BUILD_CONDITIONAL(gruel,[])
])