# An object hypothesis that contains no position information.

# The unique numeric index of object detected. To get additional information about
#   this index, such as its human-readable name, listeners should perform a lookup
#   in a metadata database. See vision_msgs/VisionInfo.msg for more detail.
uint8 class_index

# The probability or confidence value of the detected object. By convention,
#   this value should lie in the range [0-1].
float64 score