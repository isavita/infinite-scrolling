module Searchable::Item
  extend ActiveSupport::Concern

  included do
    searchkick word_start: [:name], merge_mappings: false, unsearchable: [:picture_thumb, :picture_medium],
    mappings: {
      charity: {
        properties: {
          id: { type: :integer, index: :not_analyzed },
          name: { type: :string },
          price: { type: :integer },
          user_id: { type: :integer },
          created_at: { type: :date, index: :not_analyzed },
          picture_thumb: { type: :string },
          picture_medium: { type: :string },
        }
      }
    }

    def search_data
      {
        id: id,
        name: name,
        price: price,
        user_id: user_id,
        created_at: created_at,
        picture_thumb: picture(:thumb),
        picture_medium: picture(:medium),
      }
    end

    def should_index?
      true
    end
  end
end