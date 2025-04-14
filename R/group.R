list.files("www/images/ties", "emo_") |> 
  paste0("![](../www/images/ties/", x = _, ")\n\n") |> 
  paste(collapse = "") |>
  cat()

# ::: { layout-ncol=3}
  
  