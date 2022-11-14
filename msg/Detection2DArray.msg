# A list of 2D detections, for a multi-object 2D detector.
 
# frame_id equals the obtained frame_id by the camera more information in CameraInfo
# stamp equals the time stamp of the corresponding image
Header header

# A list of the detected proposals. A multi-proposal detector might generate
#   this list with many candidate detections generated from a single image.
Detection2D[] detections
