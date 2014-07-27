# Copyright (C) 2011-2014 Quantum ESPRESSO Foundation / Alexandr Fonari
#
# This file is distributed under the terms of the
# GNU General Public License. See the file `License'
# in the root directory of the present distribution,
# or http://www.gnu.org/copyleft/gpl.txt .
#

default : build_libpspio

all: build_libpspio

build_libpspio:
	if test -d src ; then \
	( cd src ; if test "$(MAKE)" = "" ; then make $(MFLAGS) ; \
	else $(MAKE) $(MFLAGS) ; fi ) ; fi

clean:
	if test -d src ; then \
	( cd src ; if test "$(MAKE)" = "" ; then make $(MFLAGS) clean ; \
	else $(MAKE) $(MFLAGS) clean ; fi ) ; fi
	if test -d devel ; then \
	( cd devel ; if test "$(MAKE)" = "" ; then make $(MFLAGS) clean ; \
	else $(MAKE) $(MFLAGS) clean ; fi ) ; fi
	rm -f libpspio.a

veryclean: clean
	rm -f libpspio.a
