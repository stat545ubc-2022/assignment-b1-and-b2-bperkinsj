test_that('Basic testing', {
  expect_lte(dice_roller(6), 6)
  expect_gte(dice_roller(6), 1)
  expect_lte(dice_roller(6, 2), 12)
  expect_gte(dice_roller(6, 2), 1)
  expect_length(dice_roller(6, 4, FALSE), 3)
  expect_equal(dice_roller(0), 'I\'m sorry, negative dice are not possible by mundane means. Please consult your nearest wizarding authority to resolve this issue.')
})
