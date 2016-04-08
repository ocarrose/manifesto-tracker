json.array!(@manifesto_promises) do |manifesto_promise|
  json.extract! manifesto_promise, :id, :title, :description, :progress
  json.url manifesto_promise_url(manifesto_promise, format: :json)
end
