export WORK=`pwd`
source ~/.config/user-dirs.dirs
mkdir -p $WORK/proprietary/
export PKGS_DIR=$WORK/proprietary/
cp -f ${XDG_DOWNLOAD_DIR}/R-Car_Gen3_Series_Evaluation_Software_Package_for_Linux-20181225.zip $PKGS_DIR
cp -f ${XDG_DOWNLOAD_DIR}/R-Car_Gen3_Series_Evaluation_Software_Package_of_Linux_Drivers-20181225.zip $PKGS_DIR
cd $WORK/meta-renesas
sh meta-rcar-gen3/docs/sample/copyscript/copy_evaproprietary_softwares.sh -f $PKGS_DIR
unset PKGS_DIR
cd $WORK
source poky/oe-init-build-env
cp $WORK/meta-experimental-own/docs/sample/conf/m3ulcb/poky-gcc/mmp/* $WORK/build/conf/

# work around for error
#mv $WORK/meta-renesas/meta-rcar-gen3/recipes-core/ncurses/ncurses_6.0+20170715.bbappend $WORK/meta-renesas/meta-rcar-gen3/recipes-core/ncurses/ncurses_%.bbappend

unset WORK
