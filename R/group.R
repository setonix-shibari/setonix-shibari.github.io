list.files("www/images/ties", "csk-red-bl") |> 
  paste0("![](../www/images/ties/", x = _, ")\n\n") |> 
  paste(collapse = "") |>
  cat()

# ::: { layout-ncol=3}
  
  