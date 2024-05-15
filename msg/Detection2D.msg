# Defines a 2D detection result.

# Class probabilities at least one hypothesis
ObjectHypothesis[] results

# 2D bounding box surrounding the object.
BoundingBox2D bbox

# Object ID, only valid for the corresponding camera source, e.g. for matching with point cloud data. 
# Non zero number, no duplicates per image, tracking_id and object_id have to match when tracking is active.
uint16 object_id

# Tracking ID zero if not set, only valid for the corresponding camera source.  
uint16 tracking_id

# Bearing of the detected object from the sensor perspective
float64  bearing_mean
float64  bearing_std

# Distance information in nautical miles
DetectionDistance distance