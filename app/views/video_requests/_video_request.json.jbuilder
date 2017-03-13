json.extract! video_request, :id, :title, :description, :slots, :created_at, :updated_at
json.url video_request_url(video_request, format: :json)
