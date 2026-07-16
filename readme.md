# Pit Analyzer

Pit Analyzer is a MATLAB-based application designed to streamline the workflow of analyzing and extracting morphological traits of pits and grains from images.

The application provides an intuitive graphical user interface (GUI) to analyze grain morphology across different views (e.g., ventral and dorsal), perform visual data exploration, and batch-export of interpretation-oriented figures.

## Key Features

- **Project Directory Management:** Easily set working directories and automatically assign sample/folder names.
- **steamlined image processing:** Load all image files from a directory and analyze then efficiently.
- **Data Merging & Organization:** Automatically load and merge CSV files from nested directories based on customized columns (e.g., aligning dorsal and ventral views).
- **Advanced Visualizations:** - Boxplots, Cumulative Distribution Functions (CDF), and Probability Density Estimations (PDE).
  - Principal Component Analysis (PCA) with customizable principal components (PCs) and distinct visual identifiers for references vs. targets.
- **Batch Export:** One-click export of all figures to high-quality `.png` and `.pdf` formats.

---

## Installation

### Prerequisites
To run Pit Analyzer, the program will install the free **MATLAB Runtime** (current version is R2025b).

1. Download the installer file.
2. Run the installer and choose your destination directory.
3. If MATLAB Runtime is not found on your machine, the installer will automatically download and install the required runtime environment.
   * *Tip:* If you uninstall Pit Analyzer in the future, you do not need to uninstall the MATLAB Runtime; it can be used to run other MATLAB-compiled applications.

---

## Quick Start Guide

### 1. Set Working Directory
- Click the **Set Folder** button.
- Select the directory containing your target image files. 
- *Best Practice:* Name each sub-folder with the corresponding sample name. Ensure images are pre-processed (e.g., in paint or GIMP) to remove dust or artifacts that may skew analysis.

### 2. Adjust Sample Name
- Provide the template of the sample name using the dedicated text box to set the column titles of the exported files.

### 3. Load & Merge Data Tables
- Set the fodlers with the results of the analyzed references, and the analyzed targets to be compared against the references.
- Reorganize tables using a designated column (by default, the **"View"** column is used to merge ventral and dorsal photo data).
- Click **Load CSVs** to scan and ingest the data.
- Click **Save Merged Data** to export the structured output.

### 4. Run Analysis & Generate Plots
- Select which samples to plot and your desired visualization format (Boxplot, CDF, PDE, or PCA).
  - **Line Plots (CDF/PDE):** Reference targets are automatically plotted as dashed lines.
  - **PCA Plots:** Uses unique symbology to differentiate references from targets.
- Use the **Save As** button on individual figures to export them, or click **Export All Figures** to batch-generate and save all features in both PNG and PDF formats simultaneously.

---

## License

GPLv3