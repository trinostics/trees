LLV <- list(LA = list(PY = 100:101, CY = 200:201), UL = 10:11)
expect_that(
  treesum(LLV, d = 0)
  , equals(c(310, 313)))
expect_that(
  treesum(LLV, d = 1)
  , equals(list(LA = c(300, 302), UL = c(10, 11))))
expect_that(
  treesum(LLV, d = 2)
  , is_identical_to(LLV))
expect_that(
  treesum(LLV$LA, depth = 0)
  , equals(c(300, 302))
)
expect_that(
  treesum(LLV$LA, depth = 1)
  , is_identical_to(LLV$LA)
)

# test that depth > max depth work correctly
expect_that(
  treesum(LLV, d = 20)
  , is_identical_to(LLV))
# Test with length of leaf vectors = 1
LL <- list(LA = list(PY = 100, CY = 200), UL = 10)
expect_that(
  treesum(LL, d = 0)
  , equals(310))
expect_that(
  treesum(LL, d = 1)
  , equals(list(LA = 300, UL = 10)))
expect_that(
  treesum(LL, d = 2)
  , is_identical_to(LL))
