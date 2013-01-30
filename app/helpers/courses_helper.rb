module CoursesHelper
	def course_id(*parts)
		unless parts.empty?
			content_for :course_id do 
				(parts << "Petition Manager").join(" - ")
			end
		end
	end
end