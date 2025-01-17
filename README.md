# NHWAVE Project

## Overview
This project integrates input preparation for hydrodynamic modeling with NHWAVE and the visualization of simulation outputs. The core focus is on tsunami simulations triggered by landslides, with input and output data being processed and visualized using MATLAB and R scripts. The project handles input and output analysis files but does not include NHWAVE simulation files, which are processed externally.

## Project Structure
The project is divided into the following sections:

### 1. Input Grid Preparation
There are two main scripts that prepare the grids required for NHWAVE simulations:
- **Lake Grid Preparation (R)**: Generates the grid for mountains and the lake, providing the necessary bathymetry for NHWAVE simulations.
- **Landslide Grid Preparation (R)**: Prepares the grid for the landslide area, providing the necessary landslide definition for NHWAVE simulations.

### 2. Output Visualization
Three scripts are available for visualizing and analyzing NHWAVE simulation outputs:
- **Movie_Frana (MATLAB)**: Provides detailed video for landslide simulation.
- **Movie_Onda (MATLAB)**: Visualizes the landslide and tsunami wave outputs.
- **plot probe (MATLAB)**: Offers comprehensive visual summaries of virtual mareograms outputs.

### 3. NHWAVE Simulation Outputs
The folder contains the output "probe" files generated by NHWAVE. These outputs consist of 2D sections of wave height evolution at specific coordinates, where "virtual mareograms" were placed during the landslide-induced tsunami simulation. These mareograms track the variation in water surface height at designated points, allowing detailed analysis of the tsunami's behavior over time.

> **Note**: The NHWAVE simulation files themselves are not included in this repository; only the preparation and visualization scripts are provided.

## Usage
1. Run the R scripts to prepare the input grids for NHWAVE.
2. Perform NHWAVE simulations externally, using the prepared grids as input.
3. Use the MATLAB scripts to visualize and analyze the generated outputs.
