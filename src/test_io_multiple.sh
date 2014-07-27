#!/bin/sh

# Init
pspdir="../psp_references"
test_program="./test_io"

# Check environment
test -d "${pspdir}" || exit 1
test -x "${test_program}" || exit 2

# Header
echo "### BEGIN test_io_multiple ###"
echo ""

# Run Abinit 6 test
${test_program} "${pspdir}/abinit6/03-Li.LDA.fhi" "test_io_6.tmp" 6
echo ""

# Run FHI test
${test_program} "${pspdir}/fhi/Li.cpi" "test_io_14.tmp" 14
echo ""

# Run UPF 1 test
${test_program} "${pspdir}/UPF/Li.UPF" "test_io_17.tmp" 17
echo ""

echo "### END test_io_multiple ###"

exit 0
