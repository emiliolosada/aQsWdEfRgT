# == Schema Information
#
# Table name: microposts # Micropost table comment
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer                                # User
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
