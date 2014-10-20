require 'json'
require 'tiller/api/handlers/404'

def handle_templates(api_version, tiller_api_hash)
  case api_version
    when 'v1'
        {
            :content => tiller_api_hash['templates'].keys.to_json,
            :status => '200 OK'
        }
      else
        handle_404
      end
  end