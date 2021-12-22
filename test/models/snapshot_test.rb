require "test_helper"

class SnapshotTest < ActiveSupport::TestCase
  def setup
    @user = users(:tony)
    @snapshot = @user.snapshots.build(content: "test content")
  end

  test "should be valid" do
    assert @snapshot.valid?
  end

  test "user id should be present" do
    @snapshot.user_id = nil
    assert_not @snapshot.valid?
  end
end
