# TEM-Defect-Analysis
MATLAB scripts that can be used to analyze TEM, HRTEM, and ACTEM images of defected 2D materials such as graphene, phosphorene, and the transition metal dichalcogenides (MoS2, WS2, etc.). Given outputs are number of pristine atoms or amount of pristine material relative to the defected atoms/material.

AtomicCounter.m should be used for atomic-scale images.

DefectAreaMeasure.m should be used for everything else.

Place the corresponding .m file in your current MATLAB directory and run either 'AtomicCounter.m' or 'DefectAreaMeasure.m' from the command line. You will be prompted to open an image file and after selecting one, the code will output the relevant data to the command line.
