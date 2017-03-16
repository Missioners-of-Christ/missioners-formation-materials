class ContentfulChapter < ContentfulModel::Base
	self.content_type_id = "formationChapter"
	
	unless Rails.env == 'production'
		ContentfulModel.use_preview_api = true
	end
end