library(tidyverse)

describe_list_elements <- function(list_elem, i) {
  cli::cli_alert('Inside of describe_list_of_elements: {list_elem} {i}')
  what_x_is <- typeof(list_elem)
  class_x_is <- class(list_elem)
  length_x <- length(list_elem)
  cli::cli_alert_info('{i}: <{what_x_is}> with class <{class_x_is}> - length {length_x}')
  return(what_x_is)
}

list_of_vectors <- list(
  a = TRUE,
  b = c(TRUE, 1L),
  c = c(TRUE, 1L, 1),
  d = c(TRUE, 1L, 1, 'a'),
  e = c('2020-01-01', Sys.time()),
  f = c(3, Sys.time()),
  g = Sys.time()
)

vector_types <- imap_chr(list_of_vectors, describe_list_elements)

