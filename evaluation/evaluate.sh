#!/usr/bin/env sh

# Usage for the evaluation binary:
# ------------------------------

# ./evaluate [OPTIONS]
#    -h              : print usage
#    -a fileName     : file with face annotations (default: ellipseList.txt)
#    -d fileName     : file with detections (default: faceList.txt)
#    -f format       : representation of faces in the detection file (default: 0)
#                      [ 0 (rectangle), 1 (ellipse), or  2 (pixels) ]
#    -i dirName      : directory where the original images are stored 
# 		     (default: ~/scratch/Data/facesInTheWild/)
#    -l fileName     : file with list of images to be evaluated (default: temp.txt)
#    -r fileName     : prefix for files to store the ROC curves (default: temp)
#    -s              : display the matching detection-annotation pairs.
#    -z imageFormat  : image format used for reading images for the annotation set 
#                      (default: .jpg )


a_fileName="../FDDB-folds/ellipse-files/all_folds_ellipseList.label"
d_fileName="../res_dets/wider-face-600-1000-end2end-all-rs_conv5/all_folds_pred_0.15_0.85.label"
format=0
dirName="../originalPics/"
l_fileName="../FDDB-folds/ims-files/all_folds.label"
r_fileName="../res_dets/wider-face-600-1000-end2end-all-rs_conv5/all_folds_pred_0.15_0.85_roc_curves"
imageFormat=".jpg"

./evaluate -a $a_fileName -d $d_fileName -f $format -i $dirName -l $l_fileName -r $r_fileName -z $imageFormat
# ./evaluate -a $a_fileName -d $d_fileName -f $format -i $dirName -l $l_fileName -r $r_fileName -s -z $imageFormat