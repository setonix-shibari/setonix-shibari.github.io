dir <- "www/images/grid"
cats <- "grid; corset; nsfw"


images <- list.files(dir, "[1-6]{2}", recursive = TRUE, full.names = TRUE)
for (img in images) {
  base <- basename(img) |> sub("\\.jpg$", "", x = _)
  file <- paste0("photos/grid-", base, ".qmd")
  
  if (file.exists(file)) {
    title <- base |> 
      gsub("-", " ", x = _) |> 
      stringr::str_to_title()
    
    title <- paste("Grid Corset with", dplyr::case_match(substr(base, 4, 4), 
                               "r" ~ "Red",
                               "o" ~ "Orange",
                               "y" ~ "Yellow",
                               "g" ~ "Green",
                               "b" ~ "Blue",
                               "p" ~ "Purple"),
                   "Base and",
                   dplyr::case_match(substr(base, 6, 6), 
                                     "r" ~ "Red",
                                     "o" ~ "Orange",
                                     "y" ~ "Yellow",
                                     "g" ~ "Green",
                                     "b" ~ "Blue",
                                     "p" ~ "Purple"),
                   "Boning")
    

    txt <- sprintf("---
title: %s
categories: [photo%s]
image: ../%s
image-alt: \"\"
---

Corset from the [grid project](/posts/2025-01-27_grid-project.html).

![](../%s)
", title, cats, img, img)
    
    write(txt, file)
  }
}
