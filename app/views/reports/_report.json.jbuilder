json.extract! report, :id, :date, :rc, :ec, :rm, :created_at, :updated_at
json.url report_url(report, format: :json)
