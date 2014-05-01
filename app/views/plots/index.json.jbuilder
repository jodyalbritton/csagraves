json.array!(@plots) do |plot|
  json.extract! plot, :id, :first_name, :middle_name, :last_name, :rank, :birth_date, :death_date, :cemetery_id, :created_by_id, :approved, :unit, :description, :spouse, :mother, :father, :find_a_grave
 
end
