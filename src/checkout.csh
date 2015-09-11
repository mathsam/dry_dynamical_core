#!/bin/tcsh -f
# Checkout Script for Experiment 'HSt42'
# ------------------------------------------------------------------------------
# The script created at 2015-09-10T19:43:13 via:
# /ncrc/home2/fms/local/opt/fre-commands/bronx-7/bin/fremake --link --ncores=8 --platform=ncrc2.default --submit --target=openmp --walltime=120 --xmlfile=/autofs/mnt/ncrc-svm1_home2/Junyi.Chai/xml/idealized.xml HSt42
# ------------------------------------------------------------------------------

source $MODULESHOME/init/csh
echo Using source directory = /lustre/f1/unswept/Junyi.Chai/siena_201303/HSt42/src...
cd /lustre/f1/unswept/Junyi.Chai/siena_201303/HSt42/src

module avail git >& .git_avail
if (! -z .git_avail) then
    module load git
endif

unalias *

# ---------------- component 'fms_spectral_solo'
setenv CVSROOT :ext:cvs.princeton.rdhpcs.noaa.gov:/home/fms/cvs
cvs co -r siena_201303 fms_spectral_solo
 
        cvs co -r siena_201303  atmos_shared/interpolator/interpolator.F90
        cvs co -r siena_201303  shared/time_interp/time_interp.F90
       

exit 0
