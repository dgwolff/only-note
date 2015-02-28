class Note < ActiveRecord::Base
  searchkick
  belongs_to :user
end
