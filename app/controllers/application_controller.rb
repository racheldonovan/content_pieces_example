# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :load_content_pieces
     
  
  

  private
    
    def load_content_pieces
      @content_piece_main = ContentPiece.find(:first, :order => 'created_at', :conditions => ["controller = ? AND view = ? AND area = 'main'", params[:controller], params[:action]])
    end
    
end
