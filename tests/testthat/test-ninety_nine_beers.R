all_pairs <- readLines("lyrcs.txt") %>%
  discard(is_empty_string) %>%
  chunk_in_pairs()

test_that("we can generate the last pair", {
  generated <- generate_last_pair(n = 99)
  expect_equal(generated, expected = last(all_pairs))
})

test_that("we can generate some intermediate pair", {
  generated <- generate_pair(n = 35)
  expect_equal(generated, expected = all_pairs[[length(all_pairs) - 35]])
})

test_that("we can generate the pair about '1 bottle of beer'", {
  generated <- generate_pair(1)
  expect_equal(generated, last(all_pairs, n = 2))
})

test_that("we can generate the the lyrics for 2 beers", {
  expected <- list(generate_pair(2), generate_pair(1), generate_last_pair(n = 2))
  expect_equal(generate_all_pairs(n = 2), expected)

  test_that("same for 99 beers", {
    expect_equal(generate_all_pairs(n = 99), all_pairs)
  })
})

test_that("we can generate the 300 chars of the lyrics", {
  n_chars <- 300
  lyrics_str <- readChar("lyrcs.txt", nchars = n_chars)
  generated <- substr(generate_lyrics_str(), start = 1, stop = n_chars)
  expect_equal(generated, lyrics_str)

  test_that("same for the entire text", {
    lyrics_str <- readChar("lyrcs.txt", nchars = 50000)
    expect_equal(generate_lyrics_str(), lyrics_str)
  })
})
