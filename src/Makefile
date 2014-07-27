# Copyright (C) 2011-2014 Quantum ESPRESSO Foundation / Alexandr Fonari
#
# This file is distributed under the terms of the
# GNU General Public License. See the file `License'
# in the root directory of the present distribution,
# or http://www.gnu.org/copyleft/gpl.txt .
#

include ../../make.sys

# location of needed modules
MODFLAGS = $(MOD_FLAG).
MANUAL_DFLAGS += -DHAVE_CONFIG_H
# LIBS += -lgsl -lgslcblas

LIBPSPIOMODS = \
  abinit_util.o \
  abinit_xc.o \
  interpolation.o \
  pspio_abinit.o \
  pspio_error.o \
  pspio_f90_types.o \
  pspio_f90_lib.o \
  pspio_fhi.o \
  pspio_fortran_c.o \
  pspio_info.o \
  pspio_mesh.o \
  pspio_meshfunc.o \
  pspio_potential.o \
  pspio_projector.o \
  pspio_pspdata.o \
  pspio_qn.o \
  pspio_state.o \
  pspio_upf.o \
  pspio_xc.o \
  test_error.o \
  test_io.o \
  test_mesh.o \
  test_meshfunc.o \
  test_potential.o \
  test_projector.o \
  test_qn.o \
  test_state.o \
  test_xc.o \
  upf_read.o \
  upf_tag.o \
  upf_write.o \
  upf_xc.o \
  util.o

all : libpspio.a

libpspio.a: $(LIBPSPIOMODS)
	$(AR) $(ARFLAGS) $@ $?       
	$(RANLIB) $@
	mv $@ ../    

clean :
	- /bin/rm -f *.o *.a *.d *.i *~ *.F90 *.mod *.L
