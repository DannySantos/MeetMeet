ThinkingSphinx::Index.define :request, with: :active_record do
  indexes activity_id
  indexes town_city
  indexes country
end