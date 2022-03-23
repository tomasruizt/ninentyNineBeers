devtools::load_all(".")

n <- commandArgs(trailingOnly = TRUE)[1]
cat(glue("The generated lyrics for n={n} are:\n\n"))
cat(generate_lyrics_str(n = n))
