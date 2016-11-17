class Project < ApplicationRecord
  has_many :time_entries
  def self.clean_old
    where('created_at' < ?', 1.week.ago).destroy_all
  end
end
