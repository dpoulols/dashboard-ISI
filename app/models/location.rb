class Location < ApplicationRecord
    geocoded_by :direccion
    after_validation :geocode
end
