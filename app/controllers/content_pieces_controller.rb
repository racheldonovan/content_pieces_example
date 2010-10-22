class ContentPiecesController < ApplicationController
  before_filter :login_required
  
  def index
    @content_pieces = ContentPiece.all
  end
  
  def show
    @content_piece = ContentPiece.find(params[:id])
  end
  
  def new
    @content_piece = ContentPiece.new
  end
  
  def create
    @content_piece = ContentPiece.new(params[:content_piece])
    if @content_piece.save
      flash[:notice] = "Successfully created content piece."
      redirect_to @content_piece
    else
      render :action => 'new'
    end
  end
  
  def edit
    @content_piece = ContentPiece.find(params[:id])
  end
  
  def update
    @content_piece = ContentPiece.find(params[:id])
    if @content_piece.update_attributes(params[:content_piece])
      flash[:notice] = "Successfully updated content piece."
      redirect_to @content_piece
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @content_piece = ContentPiece.find(params[:id])
    @content_piece.destroy
    flash[:notice] = "Successfully destroyed content piece."
    redirect_to content_pieces_url
  end
end
