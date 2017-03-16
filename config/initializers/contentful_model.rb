ContentfulModel.configure do |config|
  config.access_token = Rails.application.secrets.contentful_access_token
  config.preview_access_token = Rails.application.secrets.contentful_preview_key
  # config.management_token = Rails.application.secrets.contentful_preview_key
  config.space = Rails.application.secrets.contentful_formation_space
  config.options = {
    # api_url: 'preview.contentful.com',
    dynamic_entries: :auto
  }
end