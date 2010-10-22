require 'test_helper'

class ContentPiecesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => ContentPiece.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    ContentPiece.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    ContentPiece.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to content_piece_url(assigns(:content_piece))
  end
  
  def test_edit
    get :edit, :id => ContentPiece.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    ContentPiece.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ContentPiece.first
    assert_template 'edit'
  end
  
  def test_update_valid
    ContentPiece.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ContentPiece.first
    assert_redirected_to content_piece_url(assigns(:content_piece))
  end
  
  def test_destroy
    content_piece = ContentPiece.first
    delete :destroy, :id => content_piece
    assert_redirected_to content_pieces_url
    assert !ContentPiece.exists?(content_piece.id)
  end
end
