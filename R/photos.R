dir <- "www/images/new"
cats <- ", nsfw"


images <- list.files(dir, ".", recursive = TRUE, full.names = TRUE)
images <- gsub(dir, "www/images/ties", images)
#images <- images[!grepl("1-1|2-2|3-3|4-4|5-5|6-6", images)]
for (img in images) {
  base <- basename(img) |> sub("\\.jpg$", "", x = _)
  file <- paste0("photos/", base, ".qmd")
  
  
  if (!file.exists(file)) {
    title <- base |> 
      gsub("-", " ", x = _) |> 
      stringr::str_to_title()

      # title <- paste("Grid Corset with", dplyr::case_match(substr(base, 1, 1), 
      #                          "1" ~ "Red",
      #                          "2" ~ "Orange",
      #                          "3" ~ "Yellow",
      #                          "4" ~ "Green",
      #                          "5" ~ "Blue",
      #                          "6" ~ "Purple"),
      #              "Base and",
      #              dplyr::case_match(substr(base, 3, 3), 
      #                                "1" ~ "Red",
      #                                "2" ~ "Orange",
      #                                "3" ~ "Yellow",
      #                                "4" ~ "Green",
      #                                "5" ~ "Blue",
      #                                "6" ~ "Purple"),
      #              "Boning")
    
    if (grepl("^bw-", base)) {
      newcats <- paste0(cats, ", b&w")
      title <- gsub("^Bw", "B&W", title)
    } else {
      newcats <- cats
    }

    txt <- sprintf("---
title: %s
categories: [photo%s]
image: ../%s
image-alt: \"\"
---


![](../%s)
", title, newcats, img, img)
    
    write(txt, file)
  }
}
