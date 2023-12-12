req <- httr2::request("http://127.0.0.1:8080/predict") |>
  httr2::req_body_json(
    list(
      list(
        "bill_length_mm" = 0,
        "species_Chinstrap" = FALSE,
        "species_Gentoo" = FALSE,
        "sex_male" = FALSE
      )
    )
  ) |>
  httr2::req_perform()

res <- httr2::resp_body_json(req)$predict[[1]]
