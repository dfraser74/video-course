json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :sources, :actions, :files, :images, :videos
  json.url lesson_url(lesson, format: :json)
end
