module ApplicationHelper

	# Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Khana - Meal Planner"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	# Active links
	def current_class?(test_path)
		return 'active' if request.path == test_path
		''
	end
end
