json.array!(@exams) do |exam|
  json.extract! exam, :id, :title, :caption, :discription
  json.url exam_url(exam, format: :json)
end
