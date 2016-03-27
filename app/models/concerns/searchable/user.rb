module Searchable::User
  extend ActiveSupport::Concern

  included do
    searchkick word_start: [:name], merge_mappings: false, unsearchable: [:avatar_thumb, :avatar_medium],
    mappings: {
      charity: {
        properties: {
          id: { type: :integer, index: :not_analyzed },
          name: { type: :string },
          age: { type: :integer },
          latitude: { type: :float },
          longitude: { type: :float },
          created_at: { type: :date, index: :not_analyzed },
          avatar_thumb: { type: :string },
          avatar_medium: { type: :string },
        }
      }
    }

    def search_data
      {
        id: id,
        name: name,
        age: age,
        latitude: latitude,
        longitude: longitude,
        created_at: created_at,
        avatar_thumb: avatar(:thumb),
        avatar_medium: avatar(:medium),
      }
    end

    def should_index?
      true
    end
  end
end