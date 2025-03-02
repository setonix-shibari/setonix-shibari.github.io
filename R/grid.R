library(webmorphR)

dir <- "www/images/grid-outtakes"
outtakes <- read_stim(dir, pattern = "\\d-\\d")
# outtakes <- resize(outtakes, height = 1600, width = 1200)
# write_stim(outtakes, dir, format = "jpg", overwrite = TRUE)


grid <- plot_stim(outtakes, ncol = 6, fill = "black")
grid
write_stim(grid, dir, "grid-outtakes", "jpg")
