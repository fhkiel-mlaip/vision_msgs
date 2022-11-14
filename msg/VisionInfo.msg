# Provides meta-information about a visual pipeline.
#
# This message serves a similar purpose to sensor_msgs/CameraInfo, but instead
#   of being tied to hardware, it represents information about a specific
#   computer vision pipeline. This information stays constant (or relatively
#   constant) over time, and so it is wasteful to send it with each individual
#   result. By listening to these messages, subscribers will receive
#   the context in which published vision messages are to be interpreted.
# Each vision pipeline should publish its VisionInfo messages to its own topic,
#   in a manner similar to CameraInfo.

# Used for sequencing
Header header

# Lookup array for the class index, zero based. 
string [] class_names

# Descriptions of the vision pipeline. This should be a value that is meaningful to an
#   outside user.
string descriptions