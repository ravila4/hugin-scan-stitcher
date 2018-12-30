# hugin-stitch-scans
A script for stitching scanned art/documents with Hugin. Borrowed and modified from: http://hugin.sourceforge.net/tutorials/scans/en.shtml

It has been modified from the original to use hugin_executor instead of pto2make, which is no longer shipped with Hugin

## Requirements
[Hugin](http://hugin.sourceforge.net)

## Usage
```{bash}
./run-scan-stitch.sh outout_prefix fov input_suffix.jpg
```
FOV parameter is unknown, but a value of 1 seems to work well in my experiments:

