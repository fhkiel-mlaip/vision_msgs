# A list of 3D detections, for a multi-object 3D detector.

# frame_id equals the obtained frame_id by the camera more information in CameraInfo
# stamp equals the time stamp of the corresponding image
Header header

# A list of the detected proposals. A multi-proposal detector might generate
#   this list with many candidate detections generated from a single input.
Detection3D[] detections
