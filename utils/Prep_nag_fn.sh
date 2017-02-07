#!/usr/bin/env bash
#
# --------------------------------------------------------------
#  Prep-nag_fn
#
#     Looks at NAG header files to create fn specific info to be used in the 
#     creation of ccalls.  One could use clang.jl, but the header files are
#     so well structured, you can rely on your awk/sed skills.
#
#  Copyright (C) 2017  Louis Scott 
#  
# --------------------------------------------------------------

PROGNAME=$(basename $0)

function usage() {
    echo "usage: prep_NAG_fn -dir filedirectoryname | [-h]]"
    echo "where: "
    echo "-hdr | --nagheader the nag header file with function names, inputs and outputs"
    echo "-ids | --nagnames the nag header file with function aliases"
    echo "-is  | --inputstr the list of inputs eg 'extern double NAG_CALL' "
    echo "-os  | --outputstr output list to use eg '(double x, NagError \*fail)' "
    echo "-dir | --directory the data directory to use (default is ../src)"
    echo "-h   | --help displays this information"

}


function error_exit() {
	echo "${PROGNAME}: ${1:-"Error"}" 1>&2
	exit 1
}


function clean_up() {
#
# clean up by removing temporary files
#
  rm $TMP_DIR/*.tmp
  rm $TMP_DIR/*.tmp.gz
  rm $TMP_DIR/*.csv
}


main() {
 
  NAG_DIR=~/NAG/cll6i26dcl/include # NAG include dir for header files
  NAGHDR=nags.h
  NAGNAMES=nag_names.h
  PARENTDIR=$(pwd) # NAG.jl dir
  TMP_DIR=../tmp
  BUILD_DIR=$(pwd) #../src
  INSTR='extern double NAG_CALL'
  OUTSTR='(double x, NagError \*fail);'
  
  while [ "$1" != "" ]; do
      case $1 in
	  -hdr  | --nagheaderfile ) shift
                                    NAGHDR=$1
                                    ;;
	  -ids  | --nagnamesfile )  shift
                                    NAGNAMES=$1
                                    ;;
	  -is  | --inputstr )       shift
                                    INSTR=$1
                                    ;;
	  -os  | --outputstr )      shift
                                    OUTSTR=$1
                                    ;;
	  -dir  | --directory )     shift
                                    BUILD_DIR=$1
                                    ;;
	  -h | --help )             usage
                                    return
                                    ;;
	  * )                       usage
                                    exit 1
      esac
      shift
  done

  F_SOURCE=$TMP_DIR/$NAGHDR
  F_NAMES=$TMP_DIR/$NAGNAMES
  F_TMP='naglist_1.txt'
  cp ${NAG_DIR}/*.h ${TMP_DIR}
  
  echo using directory ${BUILD_DIR}

  cat ${F_SOURCE} | grep "${INSTR}" | grep "${OUTSTR}" | sed "s/${INSTR}//" | sed "s/${OUTSTR}//" > ${F_TMP}

  # cannot get grep to accept "${F_TMP} ${F_NAMES}"
  grep -Fwf naglist_1.txt ../tmp/nag_names.h | sed 's/  */ /g' | cut -d ' ' -f 2-3 > naglist_2.txt
  
  cat naglist_2.txt | sed 's/\(nag_[a-z_0-9]*\) \(s[a-z0-9]*\)/ const \1 = \2/g' > nag_const_substnames.txt
  
  cat ${F_TMP} | sed 's/  */ /g' | tr '\n' , > nag_substlist.txt
  cat nag_substlist.txt | sed 's/\([a-z0-9][a-z0-9]*\)/:\1/g' > nag_evalsubst.txt
  
  echo cleaning up
  #clean_up

# original sketch  
# cat nags.h | grep 'extern double NAG_CALL' | grep '(double x, NagError \*fail)' | sed 's/ extern double NAG_CALL //' | sed 's/(double x, NagError \*fail);//' > naglist1.txt
# grep -Fwf naglist1.txt nag_names.h | sed 's/  */ /g' | cut -d ' ' -f 2-3 > naglist2.txt
# grep -Fwf naglist1.txt nag_names.h | sed 's/  */ /g' | cut -d ' ' -f 2-3 | sed 's/\(nag_[a-z_0-9]*\) \(s[a-z0-9]*\)/ const \1 \2/g' > nag_const_substnames.txt
# tr , '\n'
# cat naglist1.txt |tr '\n' , > nag_substlist.txt


}

main "$@"
