# hugin-scan-stitcher
A script for stitching scanned art/documents with Hugin. Borrowed and modified from: http://hugin.sourceforge.net/tutorials/scans/en.shtml

It has been modified from the original to use hugin_executor instead of pto2make, which is no longer shipped with Hugin

## Requirements
- [Hugin](http://hugin.sourceforge.net)
- [enblend/enfuse](http://enblend.sourceforge.net/)

## Usage
Run in a folder with scanned images.
```{bash}
./run-scan-stitch.sh <output_prefix> <fov> <input_extension>

# Example:
./run-scan-stitch.sh merged 10 .tif
```
The FOV parameter is unknown, but values between 1 and 10 worked well in my experiments.
