# Defines a 3D detection result.

# Class probabilities. Does not have to include hypotheses for all possible
#   object ids, the scores for any ids not listed are assumed to be 0.
ObjectHypothesis[] results

# 3D bounding box surrounding the object.
BoundingBox3D bbox

# Object ID, only valid for the corresponding point cloud source, e.g. for matching with camera data. 
# Non zero number, no duplicates per point cloud, tracking_id and object_id have to match when tracking is active.
uint16 object_id

# Tracking ID zero if not set, only valid for the corresponding point cloud source.  
uint16 tracking_id