list.files("www/images/ties", "bw-rosettes") |> 
  paste0("![](../www/images/ties/", x = _, ")\n\n") |> 
  paste(collapse = "") |>
  cat()

# ::: { layout-ncol=3}
  
  