# == Schema Information
# Schema version: 20110313172129
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content

  default_scope :order => 'microposts.created_at DESC'

  validates :content, :presence => true, :length => {:maximum => 140}
  validates :user_id, :presence => true
end
