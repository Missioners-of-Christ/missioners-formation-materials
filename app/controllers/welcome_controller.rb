class WelcomeController < ApplicationController
  def index
    @entries = client.entries
  end

private
  def client
    Contentful::Client.new(
      space: Rails.application.secrets.contentful_formation_space,
      access_token: Rails.application.secrets.contentful_preview_key,
      api_url: 'preview.contentful.com',
      dynamic_entries: :auto
    )
  end
end
