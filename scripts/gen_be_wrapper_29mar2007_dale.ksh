#!/bin/ksh
set -ev

export DAT_DIR=/ptmp/dmbarker/data
export REGION=dowell
export EXPT=test
export WRFVAR_DIR=/glade/proj2/mmm/users/dmbarker/code/stand_alone_holmym_be

export REG_DIR=${DAT_DIR}/${REGION}
export FC_DIR=$REG_DIR
export EXP_DIR=$REG_DIR/${EXPT}
export RUN_DIR=$EXP_DIR
export WORK_DIR=$EXP_DIR/working
export GEN_BE_DIR=$WRFVAR_DIR
export SCRIPTS_DIR=$WRFVAR_DIR/scripts
export BUILD_DIR=$GEN_BE_DIR/src

export NUM_PROCS=1
export WALL_CLOCK=30
export PROJECT=64000510
export QUEUE=debug
export CLEAN=false
export START_DATE=2007032903
export END_DATE=2007032903
export NUM_LEVELS=34
export NUM_WE=350
export NUM_SN=450
export BIN_TYPE=5
export BE_METHOD=ENS
export NE=30
export FCST_RANGE=12
export DOMAIN=01
export FCST_RANGE1=0
export FCST_RANGE2=12
export INTERVAL=2
export STRIDE=10
export SL_METHOD=1
export N_HOLM_BINS=10

export RUN_GEN_BE_STAGE0=true
export RUN_GEN_BE_STAGE1=true
export RUN_GEN_BE_STAGE2=true
export RUN_GEN_BE_STAGE3=true
export RUN_GEN_BE_STAGE4=true
export RUN_GEN_BE_HISTOG=true

# run gen_be
$SCRIPTS_DIR/gen_be.ksh
