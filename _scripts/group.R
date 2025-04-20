list.files("www/images/ties", "trans-rights_") |> 
  paste0("![](../www/images/ties/", x = _, ")\n\n") |> 
  paste(collapse = "") |>
  cat()

# ::: { layout-ncol=3}
  
  