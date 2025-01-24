dir <- "www/images/ties"
cats <- ""


images <- list.files(dir, recursive = TRUE, full.names = TRUE)
for (img in images) {
  base <- basename(img) |> sub("\\.jpg$", "", x = _)
  file <- paste0("photos/", base, ".qmd")
  
  if (!file.exists(file)) {
    title <- base |> 
      gsub("-", " ", x = _) |> 
      stringr::str_to_title()

    txt <- sprintf("---
title: %s
categories: [photo%s]
image: ../%s
image-alt: \"\"
---

![](../%s)
", title, cats, img, img)
    
    write(txt, file)
  }
}
