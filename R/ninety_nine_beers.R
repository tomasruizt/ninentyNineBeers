chunk_in_pairs <- function(xs) {
  map2(.f = append,
       .x = xs[seq(1, by = 2, length(xs))],
       .y = xs[seq(2, by = 2, length(xs))])
}

generate_last_pair <- function(n) {
  c("No more bottles of beer on the wall, no more bottles of beer",
    glue("Go to the store and buy some more, {n_bottles} of beer on the wall",
         n_bottles = if (n == 1) "1 bottle" else glue("{n} bottles")))
}

generate_pair <- function(n) {
  c(glue("{n} bottle{s} of beer on the wall, {n} bottle{s} of beer", s = if (n == 1) "" else "s"),
    glue("Take one down and pass it around, {num} bottle{s} of beer on the wall",
         num = if (n == 1) "no more" else n - 1,
         s = if (n == 2) "" else "s")
  )
}

last <- function(xs, n = 1) xs[[length(xs) - n + 1]]

generate_all_pairs <- function(n) {
  seq(n, by = -1) %>%
    lapply(generate_pair) %>%
    append(list(generate_last_pair(n)))
}

generate_lyrics_str <- function(n = 99) {
  stopifnot(is.numeric(n), n > 0)
  pairs <- generate_all_pairs(n = n)
  pairs %>%
    map(paste, collapse = "\n") %>%
    paste(collapse = "\n\n") %>%
    paste0("\n")
}

is_empty_string <- function(x) x == ""
