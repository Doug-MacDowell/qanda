json.array!(@collabs) do |collab|
  json.extract! collab, :id, :question, :answer
  json.url collab_url(collab, format: :json)
end
