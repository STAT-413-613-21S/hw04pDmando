plotmyseq_n <- function(inputdata) {
  if (ncol(inputdata) != 4) {
    stop("There must be four columns in the dataframe") #Checking for Errors
  }
  data_rows <- nrow(inputdata)
  output_vec <- vector(mode = "double", length = data_rows) #reformatting/creating the data set from prior functions
  for (i in 1:data_rows) {
    func_int <- as.numeric(inputdata[i, 4])
    func_vec <- as.numeric(inputdata[i, 1:3])
    output_vec[i] <- myseq_n(func_vec, func_int)
  }
  n <- inputdata[[4]]
  plot_data <- data.frame(output_vec, n)

  plot <- ggplot2::ggplot(ggplot2::aes(n, output_vec), data = inputdata) +  #creating a gg-line plot of the data
    ggplot2::geom_line() +
    ggplot2::labs(title = "My Sequence: c(3, 2.5, 2.7, 2.783, 2.755, 2.744, 2.748, 2.749, 2.748)",
                  y = "output")
  return(plot)
}
