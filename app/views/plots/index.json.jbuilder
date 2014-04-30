json.array!(@plots) do |plot|
  json.extract! plot, :id, :first_name, :middle_name, :last_name, :rank, :birth, :death, :cemetery_id, :created_by_id, :approved, :unit, :description, :spouse, :mother, :father, :find_a_grave
  json.url plot_url(plot, format: :json)
end
