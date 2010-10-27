module ContentPiecesHelper
  
	def insert_main_content
    if @content_piece_main.nil?
      "&nbsp;"
    else
      "#{@content_piece_main.content}"
    end
	end
	
end
