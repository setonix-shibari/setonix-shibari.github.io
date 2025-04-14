list.files("www/images/ties", "black-rose_") |> 
  paste0("![](../www/images/ties/", x = _, ")\n\n") |> 
  paste(collapse = "") |>
  cat()

# ::: { layout-ncol=3}
  
  