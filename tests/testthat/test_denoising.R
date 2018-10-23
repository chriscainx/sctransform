context("denoising")

test_that('denoising runs and returns expected output', {
  skip_on_cran()
  options(mc.cores = 2)
  set.seed(42)
  vst_out <- vst(pbmc, return_cell_attr = TRUE)
  umi_denoised <- denoise(vst_out)
  expect_equal(c(0, 0, 0, 0, 0, 1, 1, 0, 6), as.numeric(umi_denoised[1:3, 1:3]))
})
