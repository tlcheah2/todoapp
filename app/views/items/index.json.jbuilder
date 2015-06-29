json.array!(@items) do |item|
  json.extract! item, :id, :task, :duedate, :done
  json.url item_url(item, format: :json)
end
