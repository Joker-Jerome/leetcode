# select the best model
best_model <- function(weight_file) {
  # load the weight data
  load(weight_file)
  weight_file <- as.data.frame(wgt.matrix)

  # best idx
  # 1st_idx <- which.max(cv.performance[1, ])
  best_idx <- which.max(cv.performance[1, ])
  message("Number of SNP: ", nrow(weight_file))
  message("Number of NA coefficient: ", sum(is.na(weight_file[, best_idx])))

  if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
    # 2nd
    best_idx <- which(cv.performance[1, ] == nth(cv.performance[1, ], 2))

    if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
      # 3rd
      best_idx <- which(cv.performance[1, ] == nth(cv.performance[1, ], 3))
      if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
        return(NA)
      } else {
        return(best_idx)
      }
    } else {
      return(best_idx)
    }
  }
}