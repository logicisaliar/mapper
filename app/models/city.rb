class City < ApplicationRecord
  belongs_to :state
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?

end
