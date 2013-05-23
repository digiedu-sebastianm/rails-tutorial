module ApplicationHelper
	def full_title(page_title)
		base_tile = "Ruby Tutorial"
		if page_title.empty?
			base_tile
		else
			"#{base_tile} | #{page_title}"			
		end
	end
end
