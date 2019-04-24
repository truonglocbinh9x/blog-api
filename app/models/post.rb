class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  def as_json(*)
    super.except('created_at', 'updated_at').tap do |hash|
      hash['created_at'] = created_at.strftime("%H:%M %Y/%m/%d")
    end
  end
end
