
library(testthat)
#ön hazırlık
test_that("Çalışma alanındaki tüm değişkenleri sil", {
  rm(list = ls())
  expect_equal(length(ls()), 0)
})

test_that("Eğer mevcutsa veri setini sil", {
  if ("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files()) {
    file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
  }
  expect_equal("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files(), FALSE)
})

#2.1
current_dir <- getwd()
print(current_dir)
relative_path <- file.path(current_dir, "Labex1_Q1_210401071_ahmet_kanadli.R")

source(relative_path)



#2.2

test_that("Test : Data Frame'in adı 'maps' olmalıdır.", {
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.")
})

#2.3

test_that("Test : maps adlı değişken Global Workspace’de mevcuttur.", {
  expect_true(exists("maps", envir = .GlobalEnv), info = "maps adlı değişken mevcut değil.")
})

test_that("Test : maps nesnesi bir data.frame'dir.", {
  expect_is(maps, "data.frame", info = "maps nesnesi bir data.frame değil.")
})


