context("vst function")

test_that('vst runs and returns expected output', {
  skip_on_cran()
  options(mc.cores = 2)
  set.seed(42)
  vst_out <- vst(pbmc, return_gene_attr = TRUE, return_cell_attr = TRUE)
  expect_equal(c(9727, 402), dim(vst_out$y))
  ga <- vst_out$gene_attr[order(-vst_out$gene_attr$residual_variance), ]
  expect_equal(c("PPBP", "C4orf3", "MTRF1", "VDAC3", "PF4"), rownames(ga)[1:5])
  expect_equal(c(201.09918, 150.19898, 92.17449, 74.05857, 70.59825), ga$residual_variance[1:5], tolerance = 1e-05)
})
