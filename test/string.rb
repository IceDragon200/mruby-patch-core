assert "String#tr" do
  assert_equal "aaddcc", "aabbcc".tr("b", "d")
  assert_equal "1234cc", "aabbcc".tr("aabb", "1234")
end
