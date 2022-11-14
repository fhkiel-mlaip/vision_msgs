# ROS Vision Messages

## Introduction

This package defines a set of messages to unify computer
vision and object detection efforts in ROS.

## Overview

The messages in this package are to define a common outward-facing interface
for vision-based pipelines. The set of messages here are meant to enable 2D and 3D Detectors, 
which identify class probabilities as well as the position of those classes given a 
image or point cloud.

The class probabilities are stored with an array of ObjectHypothesis messages,
which is essentially a map from integer IDs to float scores and position.

Message types exist separately for 2D (using `sensor_msgs/Image`) and 3D (using
`sensor_msgs\PointCloud2`). The metadata that is stored for each object is
application-specific, and so this package places very few constraints on the
metadata. Each possible detection result must have a unique numerical ID so
that it can be unambiguously and efficiently identified in the results messages.
Object metadata such as name, mesh, etc. can then be looked up from a database.
.

## Messages
  * BoundingBox2D, BoundingBox3D: orientable rectangular bounding boxes,
    specified by the position of their edges.
  * Detection2D and Detection3D: classification + position.
  * XArray messages, where X is one of the four message types listed above. A
    pipeline should emit XArray messages as its forward-facing ROS interface.
  * VisionInfo: Information about a classifier, such as its name and where
    to find its metadata database.
  * ObjectHypothesis: An id/score pair.

By using a very general message definition, we hope to cover as many of the
various computer vision use cases as possible. 