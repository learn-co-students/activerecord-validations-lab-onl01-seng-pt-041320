class Author < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { in: 3..9 }
  validates :phone_number, length: { is: 10 }

end
