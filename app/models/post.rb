class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  
  def self.create_draft
    Post.create!(title: "DRAFT", published: false)
  end
end
