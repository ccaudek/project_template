# Set up the folder structure
folder_names <- (
  # Main folders
  c(
    "data", "reports", "saved_fits", "src",
    # Sub-folders
    "data/raw", "data/processed",
    "src/R", "src/python",
    "src/R/figures", "src/R/functions", "src/R/sandbox", "src/R/scripts", 
    "src/R/scripts/name_exp_1", "src/R/scripts/name_exp_2"
  )
)

for (j in seq_along(folder_names)) {
  dir.create(folder_names[j])
}

# Add files to the folders
file_names <- (
  c("README")
)

for (j in seq_along(file_names)) {
  file.create(paste0(file_names[j], ".md"))
  file.create(paste0("data/", file_names[j], ".md"))
  file.create(paste0("src/R/scripts/", file_names[j], ".md"))
  file.create(paste0("src/python/", file_names[j], ".md"))
}

# Add Rmd files to the src/R/scripts/ folder
rmd_names <- (
  c(
    # For preparing your data 
    "1_data_preparation",
    # The merging file might also be combined 
    # with the first file
    "2_merging", 
    # For your descriptives
    "3_descriptives",
    # For your analysis
    "4_analysis", 
    # For your visualization
    "5_visualization"
  )
)

for (j in seq_along(rmd_names)) {
  file.create(paste0("src/R/scripts/name_exp_1/", rmd_names[j], ".Rmd"))
}

# Create a helper function file
file.create("src/R/functions/helper.R")
