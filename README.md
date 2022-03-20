# CS7643 - Group Project

## Proposal

Team: Trinity

Project Title: 3D Object Classification with Point Cloud Data

Project Summary:
 The application of 3D object detection to remote sensing use-cases are a buzzing subject in
today's news. Example applications are autonomous electric vehicles, drone surveillance, software
simulation for training reinforcement learning algorithms, and underwater exploration. Therefore,
we want to explore 3D object detection and focus on point clouds which is created from lidar, a
commonly used system in object detection.
 We want to focus on this data and see how well the current approaches do. Then, we want
to explore new approaches with transfer learning as well as find efficient methods of dimensionality
reduction to prepare for an environment with limited computation.

Approach:
 From the related works on object detection, we see that point cloud data is an active area of
research that has several methods we would like to explore for 3D object classification. We want to
start analyzing and recreating the currently used approaches for object detection/classification. To
help us narrow our focus on theory and analysis, one popular Pytorch implementation we plan to
base our work on is MMDetection 3D, https://github.com/open-mmlab/mmdetection3d.
We then want to experiment with novel approaches that use transfer learning and see how they
stack up against the current methods. Another stretch goal is to use transfer learning on semisupervised or unsupervised object detection datasets.
 A final stretch goal we would like to analyze is comparing performance of a target dataset
that has had dimensionality reduction applied to the point cloud dataset. For constrained
computational environments, we see this as a motivational factor to explore various dimensionality
reduction methods and compare their results.

Resources/Related Work:
[1] PointPillars: Fast Encoders for Object Detection from Point Clouds
[2] PointNet: Deep Learning on Point Sets for 3D Classification and Segmentation
[3] SE-SSD: Self-Ensembling Single-Stage Object Detector from Point Cloud
[4] SPG: Unsupervised Domain Adaptation for 3D Object Detection via Semantic Point Generation
[5] PV-RCNN: Point-Voxel Feature Set Abstraction for 3D Object Detection
[6] Spatio-temporal Self-Supervised Representation Learning for 3D Point Clouds

Datasets:
NuScenes: https://paperswithcode.com/dataset/nuscenes
Nuscenes Lidar Segmentation https://www.nuscenes.org/nuscenes#lidarseg
Waymo Open Dataset: https://paperswithcode.com/dataset/waymo-open-dataset
Lyft https://www.kaggle.com/c/lyft-motion-prediction-autonomous-vehicles/data

Team Members:
Yuemin Zhou
Saheon Kim
Brandon Sheffield
