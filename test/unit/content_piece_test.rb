require 'test_helper'

class ContentPieceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ContentPiece.new.valid?
  end
end
