module ProgramsHelper
	def title(*parts)
		unless parts.empty?
			content_for :title do 
				(parts << "Petition Manager").join(" - ")
			end
		end
	end
end
