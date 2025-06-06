library(webmorphR)

odir <- "../s/new/"
ndir <- "www/images/uncensored/"
orig <- read_stim(odir, "\\.jpg")
resized <- resize(orig, height = 1000)
write_stim(resized, ndir, format = "jpg")
