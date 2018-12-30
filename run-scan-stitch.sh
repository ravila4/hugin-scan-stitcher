#! /bin/sh
# Hugin command tools script to stitch scanned images, fov unknown
# try FOV values between 1 and 10
# usage...run-scan-pto_var.sh outputprefix fov suffix.jpg
# TODO: Add flags, and help commands to better handle argvs

# Get the output file prefix
Prefix=$1

# Get the fov (field-of-view)
FOV=$2

# Scans wildcard without asterisk e.g. ".jpg"
scans=$3

pto_gen --projection=0 --fov=$FOV -o project.pto *$scans
pto_lensstack -o project1.pto --new-lens i1 project.pto
cpfind -o project1.pto --multirow project1.pto
cpclean -o project2.pto project1.pto
linefind -o project3.pto project2.pto
pto_var -o setoptim.pto --opt r,d,e,!r0,!d0,!e0 project3.pto
autooptimiser -n -o autoptim.pto setoptim.pto
pano_modify  --projection=0 --fov=AUTO --center --canvas=AUTO --crop=AUTO -o autoptim2.pto autoptim.pto
hugin_executor -s autoptim2.pto -p $Prefix
