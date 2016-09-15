class Property < ActiveRecord::Base
  belongs_to :user

  # make it so that listings expire after 6 months of posting, or they can be renewed for another 6 months
end
