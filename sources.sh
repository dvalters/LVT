export LVT_ARCH=linux_gfortran

export LVT_CC=gcc
export LVT_FC=gfortran
# /usr/include/grib_api.h
export LVT_GRIBAPI=/usr/share/grib_api
export LVT_JASPER=
export LVT_LIBESMF=/home/dvalters/LVT/esmf/DEFAULTINSTALLDIR/lib/libO/Linux.gfortran.64.openmpi.default
export LVT_MODESMF=/home/dvalters/LVT/esmf/DEFAULTINSTALLDIR/mod/modO/Linux.gfortran.64.openmpi.default
export LVT_SRC=/home/dvalters/LVT/LVT_public_release_7.2r
# /usr/include/
export LVT_NETCDF=/usr/lib64/
export LVT_HDF4=/usr/lib64/hdf/
export LVT_HDF5=/usr/lib64/
export LVT_HDFEOS=
export LVT_GDAL=/usr/include/gdal/
# LVT executable loads from the LD_LIRARY_PATH, so make sure this variable is exported
export LD_LIBRARY_PATH=$LVT_HDF5:$LVT_LIBESMF:$LVT_NETCDF:$LVT_GRIB_API:$LD_LIBRARY_PATH
