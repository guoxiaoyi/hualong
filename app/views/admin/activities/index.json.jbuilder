json.array!(@activities) do |activity|
  json.extract! activity, :title, :activity_category_id, :start_time, :end_time, :teacher_limit, :content
  json.url activity_url(activity, format: :json)
end