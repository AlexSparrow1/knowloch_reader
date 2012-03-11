class Citation < ActiveRecord::Base
  attr_accessible :author, :year, :title, :journal, :volume, :pages, :abstract
  
  has_attached_file :pdf
  
  default_scope :order => 'citations.created_at DESC'
  
  belongs_to :user
  
  validates :user_id, :presence => true
end
