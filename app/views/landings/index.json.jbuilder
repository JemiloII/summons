json.array!(@landings) do |landing|
  json.extract! landing, :id, :collect_emails
  json.url landing_url(landing, format: :json)
end
