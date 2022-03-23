devtools::load_all(".")

cat("The generated lyrics for n=99 are:\n\n")
cat(generate_lyrics_str(n = 99))
